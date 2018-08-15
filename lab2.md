# Adding IP to a Hardware Design Using AXI

## Objectives
After completing this lab, you will be able to:

* Add additional IP to a hardware design
*	Update ucf file to support external ports of the added IP
*	Setup some of the compiler settings

## Steps

### Open the Project
1. Open the previous project, or the lab1 project from the **{labsolutions}** directory, and save the project as lab2. Open the Block Design.
1.	Start Vivado, if necessary, and open either the lab1 project (lab1.xpr) you created in the previous lab or from the **{labsolutions}** directory using the Open Project link in the Getting Started page.
2.	Select **File > Save Project As…** to open the Save Project As dialog box. Enter lab2 as the project name.  Make sure that the Create Project Subdirectory option is checked, the project directory path is **{labs}** and click OK.

    This will create the lab2 directory and save the project and associated directory with lab2 name.

### Adding the GPIO block

1. Click on *Open Block Diagram*  in the *Flow Navigator*.
2. Add an IP to existing block diagram by **right clicking on the Diagram window> Add IP** and search for **AXI GPIO** in the catalog.

9.	Double-click the _AXI GPIO_ to add the core to the design. The core will be added to the design and the block diagram will be updated.

10.	Click on the AXI GPIO block to select it, and in the **Block Properties** tab, change the name to **switches**
   <p align="center">
   <img src ="/pics/lab2/1GPIO.JPG "  width="50%" height="80%"/>
   </p>
   <p align = "center">
   <i>Change AXI GPIO default name</i>
   </p>
11. 11.	Double click on the _AXI GPIO block_(switches) to open the customization window.

12.	From the _Board Interface_ drop down, select sws 16bits for _Basys 3_ and Nexsys4-DDR for **GPIO IP Interface**.
13.	Next, click the IP configuration tab, and notice the GPIO width has already been set to match the switches on the board

    Notice that the peripheral can be configured for two channels, but, since we want to use only one channel without interrupt, leave the Enable Dual Channel and Enable Interrupt unchecked.  

14.	Click OK to save and close the customization window
15. Notice that **Designer assistance** is available. Click on Run Connection Automation, and select **/switches/S_AXI**
16.	Click OK when prompted to automatically connect the master and slave interfaces
17. Add another instance of the GPIO AXI peripheral (Add IP). Name it as **buttons**.
18. Double click on the IP block, select the _btns GPIO interface_ (push_buttons_5bits for the _Nexsys4-DDR_ and _Basys3_ ) and click OK.

     At this point connection automation could be run, or the block could be connected manually. This time the block will be connected manually.
19. Double click on the _AXI Interconnect_ (name : microblaze_0_axi_periph) and change the Number of **Master Interfaces** to 3 and click OK
    <p align="center">
    <img src ="/pics/lab2/2AXImaster.JPG "  width="50%" height="80%"/>
    </p>
    <p align = "center">
    <i>Change AXI GPIO default name</i>
    </p>
21.	Click on the s_axi port of the buttons AXI GPIO block (name: buttons), and drag the pointer towards the AXI Interconnect block.

     The message 'Found 1 interface' should appear, and a green tick should appear beside the M01_AXI port on the AXI Interconnect indicating this is a valid port to connect to. Drag the pointer to this port and release the mouse button to make the connection.

23. Click on the green label of **Run Connection Automation**
24. Tick the following options:

      _buttons_ > _s_axi_aclk_

      _microblaze_0_axi_periph_ > _M02_M02_ACLK_

25. Click **OK**
26.	Click on the **Address Editor** tab, and expand **microblaze_0 > Data > Unmapped Slaves** if necessary
24.	Notice that switches has been automatically assigned an address, but _buttons_ has not (since it was manually connected). Right click on _buttons_ and select Assign Address.

     Note that both peripherals are assigned in the address range of _0x40000000_ to _0x4010FFFF_ (GP0 range).

   <p align="center">
   <img src ="/pics/lab2/3AXIaddr.JPG"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Peripherals Memory Map</i>
   </p>

### Make GPIO Peripheral Connections External

1. In the Diagram view, notice that **Designer Assistance** is available. We will manually create the ports and connect.

2. Right-Click on the _GPIO port_ of the **switches** instance and select **Make External** to create the external port. This will create the external port named **GPIO_0** and connect it to the peripheral. Because Vivado is “board aware”, the pin constraints will be automatically applied to the port.
3.	Select the gpio port and change the name to **switches** in its properties form.

    The width of the interface will be automatically determined by the upstream block.

4.	For the buttons GPIO, click on the **_Run Connection Automation_** link (Green label).
5.	In the opened GUI, select push_buttons_5bits for the _Nexsys4-DDR_ and _Basys3_ under the options section.
6.	Click OK.
7.	Select the created external port and change its name as buttons
8.	Run Design Validation (**Tools -> Validate Design**) and verify there are no errors.

    The design should now look similar to the diagram below

       <p align="center">
       <img src ="/pics/lab2/4Finaldsgn.JPG "  width="80%" height="80%"/>
       </p>
       <p align = "center">
       <i>Completed design</i>
       </p>
### Generate Bitstream and Export to SDK

1.	Click on **Generate Bitstream**, and click Yes if prompted to **Launch Implementation** (Click Yes if prompted to save the design)

2.	After the bitstream has been generated, Click Cancel
3.	Export the hardware by clicking **File > Export > Export Hardware** and tick **Include bitstream**. Then click OK.
4.	Click Yes to overwrite the hardware module.
5.	Start SDK by clicking **File > Launch SDK** and click OK

### Generate TestApp Application in SDK

1.	In SDK, right click on the mem_test project from the previous lab and select **Close Project**
2.	Do the same for mem_test_bsp and system_wrapper_hw_platform_0
3.	From the File menu select **File > New > Board Support Package**
4.	Click Finish with the standalone OS selected and default project name as standalone_bsp_0
5.	Click OK to generate the board support package named standalone_bsp_0
6.	From the File menu select **File > New > Application Project**
7.	Name the project **TestApp**, select Use existing board support package, select  standalone_bsp_0 and click Next

    <p align="center">
    <img src ="/pics/lab2/5sdk.JPG "  width="60%" height="80%"/>
    </p>
    <p align = "center">
    <i>Application Project settings</i>
    </p>

8.	Select Empty Application and click Finish

    This will create a new Application project using the created board support package.
10.	Expand TestApp in the project view, and right-click on the src folder, and select Import
11.	Expand General category and double-click on File System
12.	Browse to the **{sources}\lab2** folder
13.	Select **lab2.c** and click Finish

### Test in Hardware

1.	Make sure that micro-USB cable(s) is(are) connected between the board and the PC. Turn ON the power of the board.
2.	Open Terminal from **Window > Show View > Other..**
3.	Click on the connect button and if required, select appropriate COM port (depends on your computer), and configure it with the parameters as shown in lab1. (These settings may have been saved from previous lab, lab1)
1.	Select **Xilinx Tools > Program FPGA**. Set the settings according to the values shown in the picture below:

    <p align="center">
    <img src ="/pics/lab2/6program.JPG"  width="50%" height="80%"/>
    </p>
    <p align = "center">
    <i> SDK Terminal output </i>
    </p>

2.	Click Program to download the hardware bitstream.  When FPGA is being programmed, the DONE LED (green color) will be off, and will turn on again when the FPGA is programmed
3.	Select TestApp in Project Explorer, right-click and select **Run As > Launch on Hardware** (System Debugger) to download the application, execute *lab2.c* and execute *TestApp.elf*
4.	You should see the something similar to the  following output on Terminal console

    <p align="center">
    <img src ="/pics/lab2/aop.JPG"  width="50%" height="80%"/>
    </p>
    <p align = "center">
    <i> SDK Terminal output </i>
    </p>

5.	Select Console tab and click on the Terminate button ( ) to stop the program
6.	Close SDK and Vivado programs by selecting **File > Exit** in each program
7.	Power OFF the board

## Conclusion

GPIO peripherals were added from the IP catalog and connected to the Microblaze.  The peripherals were configured and external FPGA connections were established.  A TestApp application project was created and the functionality was verified after downloading the bitstream and executing the program.
