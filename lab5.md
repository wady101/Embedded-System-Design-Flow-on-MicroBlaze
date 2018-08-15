# Advanced Software Writing Using AXI

## Objectives

After completing this lab, you will be able to:

*   Utilize the AXI timer with interrupt controller

*   Assign an interrupt handler to the timer

*   Develop an interrupt handler function

*   Use SDK Debugger to set break points and view the content of variables and memory

## Steps

### Opening the Project

1.	Start the Vivado if necessary and open either the lab4 project (lab4.xpr) you created in the previous lab or the lab4 project in the **{labsolutions}** directory using the Open Project link in the Getting Started page.
2.	Select **File > Save Project As…** to open the Save Project As dialog box. Enter lab5 as the project name.  Make sure that the Create Project Subdirectory option is checked, the project directory path is {labs} and click OK.

    This will create the lab5 directory and save the project and associated directory with lab5 name.

### Add a Timer and Interrupt Controller

1. Click on *Open Block Diagram*  in the *Flow Navigator*.
2. Add an IP to exsisting block diagram by **right clicking on the Diagram window> Add IP** and search for **AXI Timer** in the catalog.

9.	Double-click the _AXI Timer_ to add the core to the design. The core will be added to the design and the block diagram will be updated.
10. Similarly add **AXI Interrupt Controller** to the block design. This IP is used for
11. Rename the blocks to _axi-timer_ and _axi_intc_ respectively.
12. You will see a green label at the top of the IP diagram saying _Run Connection Automation_. Click on it
13. Tick the option _All Automation_ to select the S_AXI ports of both the blocks. Click **OK**
14. Do the following connections :

       **interrupt** pin of the _axi_timer_ to the **intr[0:0]** pin of _axi_intc_

      **interrupt** of _axi_intc_ to the **INTERRUPT** pin of MicroBlaze.
6.	Run Design Validation (**Tools -> Validate Design**) and verify there are no errors.
15. The final block diagram looks like this:

    <p align="center">
    <img src ="/pics/lab5/1block.JPG"  width="90%" height="80%"/>
    </p>
    <p align = "center">
    <i>Change AXI GPIO default name</i>
    </p>
### Generate Bitstream and Export to SDK

1.	Click on **Generate Bitstream**, and click Yes if prompted to **Launch Implementation** (Click Yes if prompted to save the design)

2.	After the bitstream has been generated, Click Cancel
3.	Export the hardware by clicking **File > Export > Export Hardware** and tick **Include bitstream**. Then click OK.
4.	Click Yes to overwrite the hardware module.
5.	Start SDK by clicking **File > Launch SDK** and click OK

### Generate Application in SDK

1.	In SDK, right click on the lab4 project from the previous lab and select **Close Project**

2.	Do the same for lab4_bsp and system_wrapper_hw_platform_0
2.	Select **File > New > Application Project**.
3.	Enter lab5 as the Project Name, and for Board Support Package, choose Create New **lab5_bsp** (should be the only option).
4.	Click Next, and select **Empty Application** and click Finish.
5.	Expand lab4 in the project view and right-click in the src folder and select Import.
6.	Expand General category and double-click on File System.
7.	Browse to **{sources}\lab5** folder and click OK.
8.  Import **lab5.c**

### Correcting the errors in SDK

1. In the **Problems** tab, double-click on the first red **x** for the parse error. This will open the source file bring you around to the error place.   
    <p align="center">
    <img src ="/pics/lab5/2firsterror.jpg "  width="60%" height="80%"/>
    </p>
    <p align = "center">
    <i>Change AXI GPIO default name</i>
    </p>
2.  Add the missing global variable declaration as **unsigned int,** initialize it to the value of 1, and save the file.  The first error message should disappear.  
3. Click on the next error message to highlight the problem in the source code.
    <p align="center">
    <img src ="/pics/lab5/3secnderror.jpg"  width="60%" height="80%"/>
    </p>
    <p align = "center">
    <i>Change AXI GPIO default name</i>
    </p>
4.  Add the missing global variable declaration as **int**, initialize it to the value of  0, and save the file. The program will be compiled again.

### Writing an Interrupt handler

1. In SDK, open the timer API documentation by clicking **Documentation** link corresponding to the **delay** instance in the *system.mss* tab.
2. Go to the File List section and select **xtmrctr.c**. You will see several available functions including **XTmrCtr_IsExpired**
   ```C
   int XTmrCtr_IsExpired(XTmrCtr * InstancePtr, u8, TmrCtrNumber)
   ```
   > Checks if the specified timer counter of the device has expired.

   > In capture mode, expired is defined as a capture occurred. In compare mode, expired is defined as the timer counter rolled over/under for up/down counting.

   >When interrupts are enabled, the expiration causes an interrupt. This function is typically used to poll a timer counter to determine when it has expired.

   Add the function call to the code with the associated parameters.

   ```C
    if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber));
   ```
3. Complete the interrupt handler while keeping these steps in mind:

   *   Increment a counter if an interrupt was taken.
   *   Display the count value by printing the value. eg. the ``` LED_IP_mWriteReg () ``` function we used in the previous lab.

4. The complete handler looks like this:

    ```C
    /*
     * Interrupt service routine for the timer.
     */
    void timer_int_handler(void * CallBackRef, u8 TmrCtrNumber) {
    		// Setup call back reference
    		XTmrCtr *InstancePtr = (XTmrCtr *)CallBackRef;

    	    // Check if timer counter has expired
    		if (XTmrCtr_IsExpired(InstancePtr, TmrCtrNumber)) {
    			count++;
    			one_second_flag = 1;

    			// Display the count on the LEDS and print it using the UART*
	    		LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR,LEDChan, count);
	    		xil_printf("Count value is: %x\n\r", count);
	    	}
    }
    ```
5.  Save and compile the file.

### Adding the Linker Script

1. Right-click lab5 in project view and select **Generate Linker Script**.
2. Set the heap and stack size to **1024 bytes** each.
3. Assign heap and stack section to _AXIBRAMController_ memory

   <p align="center">
   <img src ="/pics/lab5/4linker.JPG"  width="60%" height="80%"/>
   </p>
   <p align = "center">
   <i>Change AXI GPIO default name</i>
   </p>

4. Click **Generate** to generate the linker scrip. The program will be compiled again. Click **Yes** to overwrite file.

### Operating in Hardware

1.	Make sure that micro-USB cable(s) is(are) connected between the board and the PC. Turn ON the power of the board.
2.	Open Terminal from **Window > Show View > Other..**

3.	Click on the connect button and if required, select appropriate COM port (depends on your computer), and configure it with the parameters as shown in lab1. (These settings may have been saved from previous lab, lab4)
1.	Select **Xilinx Tools > Program FPGA**. Set the settings according to the values shown in the picture below:

   <p align="center">
   <img src ="/pics/lab5/5program.JPG"  width="60%" height="80%"/>
   </p>
   <p align = "center">
   <i>Change AXI GPIO default name</i>
   </p>

2. Click **Program.**

   This will execute Data2Mem program to combine the bootloop executable with hardware bitstream, generate the download.bit file, and configure the FPGA.

3. Right-click on the Lab5 project in the Project Explorer view and select **Debug As > Launch on Hardware (System Debugger)**.

   The lab5.elf will be downloaded and a dialog box will appear to switch to the Debug perspective.

2.   Click **Yes** to change to the _Debug_ perspective.

3.   Go to **Window > Show View > Expressions**. Click on **Add new expression**.

4.  Here type _count_ and press Enter as this is the global variable we want see.

4.   Double-click to set a breakpoint on the line in lab5.c where count is written to LED in the interrupt handler.

   <p align="center">
   <img src ="/pics/lab5/6bp.jpg"  width="60%" height="80%"/>
   </p>
   <p align = "center">
   <i>Change AXI GPIO default name</i>
   </p>

5. Click on **Resume** ![Resume](/pics/resume.JPG) button to continue executing the program up until the breakpoint is reached.

    As you do step over, you will notice that the count variable value is changing.

6.	Click on the memory tab.  If you do not see it, go to **Window > Show View > Memory**

7.  Click the ![plus](/pics/plus.JPG)  sign to add a **Memory Monitor**
8. Enter the address of the count variable as _&count_ , and then click **OK**.
9. Notice that the count variables increment every time you click resume.

   <p align="center">
   <img src ="/pics/lab5/7mem.jpg"  width="60%" height="80%"/>
   </p>
   <p align = "center">
   <i>Change AXI GPIO default name</i>
   </p>

10. Close the SDK application and close the XPS project

## Conclusion

This lab led you through adding an AXI timer and interrupt controller, and assigning an interrupt handler function to the interrupting device through function calls.  You developed an interrupt handler function and tested it in hardware.  Additionally, you used the SDK debugger to view the content of variables and memory.
