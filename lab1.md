# Simple Hardware Design using AXI

## Objectives

After completing this lab, you will be able to:

*   Create an XPS project by using the Base System Builder (BSB)
*   Create a simple hardware design by using Xilinx AXI4 interface based IP cores available in the Embedded Development Kit

## Steps

### Create a Vivado project

1. Open Vivado by selecting **Start > All Programs > Xilinx Design Tools > Vivado 2018.2 > Vivado 2018.2**
2. Click **Create New Project** to start the wizard. You will see the Create a New Vivado Project dialog box. Click Next.
1.	Click the Browse button of the Project Location field of the New Project and browse to **{labs}**, and click Select.
1.	Enter **lab1** in the Project Name field.  Make sure that the Create Project Subdirectory box is checked.  Click Next.
1.	In the Project Type form select **RTL Project**, and click Next
1.	In the Add Sources form, select Verilog as the Target language and **Mixed** as the Simulator language, and click Next
1.	Click Next one more time to skip Add Constraints
1.	In the Default Part window, select the Boards tab, and depending on the board you are using, (if you can't find the board you are looking for, refer to [README.md](https://github.com/wady100/Embedded-System-Design-Flow-on-MicroBlaze/blob/master/README.md) for setup) and click Next.
2. Check the Project Summary (should be similar to what you see below) and click Finish to create an empty Vivado project.

    <p align="center">
    <img src ="/pics/lab1/1_summary.JPG" width="50%" height="80%"/>
    </p>
    <p align = "center">
    <i>Project Summary</i>
    </p>


### Creating the System Using the IP Integrator

1.	In the Flow Navigator, click **Create Block Design** under IP Integrator

      <p align="center">
      <img src ="/pics/lab1/2CreateIP.JPG" width="20%" height="20%"/>
      </p>
      <p align = "center">
      <i>Create IP Integrator Block Diagram</i>
      </p>

1.	Enter **system** for the design name and click OK

1.	Right-click anywhere in the Diagram workspace and select **Add IP**.
      <p align="center">
      <img src ="/pics/lab1/3AddIP.jpg" width="60%" height="80%"/>
      </p>
      <p align = "center">
      <i>Add IP to Block Diagram</i>
      </p>        


1.	Once the **IP Catalog** opens, type “micro” into the Search bar, find and double click on **MicroBlaze** entry, or click on the entry and hit the Enter key to add it to the design.
2. Next, click on the _Board_ tab present on the left side of the _Block Design_ window.
3. Scroll down to select **UART > USB UART** (highlighted in a blue box)
    <p align="center">
    <img src ="/pics/lab1/4micro.JPG" width="30%" height="80%"/>
    </p>
    <p align = "center">
    <i>UART board component</i>
    </p>       
4. Drag this board component to the _IP Diagram_ window.
5. You will get a message saying that a new block was connected to the board component. Click **OK**
6. 	Notice the message at the top of the Diagram window in a green label saying that Designer Assistance available. Click **Run Block Automation**.  
7. A new window pops up called the Run Block Automation window. In it, select /microblaze_0. Select _16KB_ in the **Local Memory**, Select _Debug & UART_ in **Debug Module**  and leave the settings as default. Click **OK**.

8. A block diagram will be generated. Double click on the clk_wiz_1 IP (The Clocking Wizard IP block).
9. Select the _Output Clocks_ tab in the **Clocking Wizard** window. At the bottom you will see _Reset Type_. Select **Active Low**.

    This is done because the board has an active low reset board connector.



6. 	Notice the message at the top of the Diagram window in a green label saying that Designer Assistance available. Click **Run Connection Automation**.  
7. Tick the _All Automation_ and click **OK**.


8. Click the Regenerate Layout button (![Regen](/pics/regenerate.JPG)) and the validate button(![Regen](/pics/terminate.JPG)) to check for any errors. You should get something like this:
    <p align="center">
    <img src ="/pics/lab1/5block.JPG" width="70%" height="80%"/>
    </p>
    <p align = "center">
    <i>Final IP block Diagram</i>
    </p>   

    You will see the MicroBlaze processor, one AXI Interconnects block- for AXI4-Lite capable devices. You will also see that the MDM and LMB are connected to the MicroBlaze ports directly.

    <!-- Processor instructions are run usually run in Local Memory Bus (LMB). -->

### Generate Top-Level and Export to SDK

  <!--Generate IP Integrator Outputs, the top-level HDL, and start SDK by exporting the hardware.
     -->  

1.	In the sources panel, right-click on **system.bd**, and select **Generate Output Products…** and click Generate to generate the Implementation, Simulation and Synthesis files for the design (You can also click on **Generate Block Design** in the Flow Navigator pane to do the same)
    <p align="center">
    <img src ="/pics/lab1/8OP.jpg" width="40%" height="80%"/>
    </p>
    <p align = "center">
    <i> Generating output products </i>
    </p>  
1.	Right-click again on system.bd, and select Create **HDL Wrapper…** to generate the top-level VHDL model. Leave the Let Vivado manager wrapper and auto-update option selected, and click OK

    The system_wrapper.vhd file will be created and added to the project.  Double-click on the file to see the content in the Auxiliary pane.
    <p align="center">
    <img src ="/pics/lab1/9wrap.JPG" width="40%" height="80%"/>
    </p>
    <p align = "center">
    <i> The HDL Wrapper file generated and added to the project </i>
    </p>  
1.	Notice that the VHDL file is already Set As the Top module in the design, indicated by the icon

2. Next, go to **File > Add Sources**. Click on _Add or create constraints_.
3. Click on **Add Files**. Go to **{sources}/lab1/** and select the corresponding constraint file to the board you are using. Click _Open_.
4. Click  _Finish_.
2. Click on **Generate Bitstream** in the _Flow Navigator_. A Launch Runs will pop up. Click **OK** and let Vivado generate the bitstream.(Save the block diagram if prompted).
1.	Select **File > Export > Export hardware** and click OK. (Save the project if prompted)
1.	Select **File > Launch SDK** leaving the default settings, and click OK

    SDK should now be open. If only the Welcome panel is visible, close or minimize this panel to view the Project Explorer and Preview panel. A Hardware platform project should have been automatically created, and the system_wrapper_hw_platform_0 folder should exist in the Project Explorer panel.

    The system.hdf file **(Hardware Description File)** for the Hardware platform should open in the preview pane. Double click system.hdf to open it if it is not.

    Basic information about the hardware configuration of the project can be found in the .hdf file, along with the Address maps for the PS systems, and driver information. The .hdf file is used in the software environment to determine the peripherals available in the system, and their location in the address map.
 
### Generate Memory TestApp in SDK

1.	Generate memory test application using one of the standard projects template.
1.	In SDK, select **File > New > Application Project**

1.	Name the project **mem_test**, and in the Board Support Package section, leave Create New selected and leave the default name mem_test_bsp and click Next. Then click on Next

  <p align="center">
  <img src ="/pics/lab1/anewSDK.jpg" width="35%" height="80%"/>
  </p>
  <p align = "center">
  <i> SDK New Project window </i>
  </p>

1.	Select **Memory Tests** from the Available Templates window, and click Finish.


    The mem_test project and the board support project mem_test_bsp will be created and will be visible in the Project Explorer window of SDK, and the two projects will be automatically built.

1.	Expand folders in the Project Explorer view on the left, and observe that there are three projects – system_wrapper_hw_platform_0, mem_test_bsp, and mem_test.  The **mem_test** project is the application that we will use to verify the functionality of the design.  The **hw_platform** includes the hdf file generated by the IP block design, and **mem_test_bsp** is the board support package. The Explorer view should look something like this:

    <p align="center">
    <img src ="/pics/lab1/aExplorer.jpg" width="35%" height="80%"/>
    </p>
    <p align = "center">
    <i> The Project Explorer view </i>
    </p>  
1.	Open the memorytest.c file in the mem_test project (under src), and examine the contents.  This file calls the functions to test the memory.

### Test in Hardware

1.	Setup the hardware as shown in [README.md](https://github.com/wady100/Embedded-System-Design-Flow-on-MicroBlaze/blob/master/README.md) according to the board you have.
1.	Select the   tab.  If it is not visible then select Window > Show view > Other...
1.  Select Terminal>Terminal and click OK
    <p align="center">
    <img src ="/pics/lab1/bTerminalwind.JPG" width="35%" height="80%"/>
    </p>
    <p align = "center">
    <i> Finding Terminal window</i>
    </p>  
1.	Click on the **Connect** button (shown below in a violet box) and if required, select appropriate COM port (depends on your computer), and configure it to the parameters as shown in the next figure.
    <p align="center">
    <img src ="/pics/lab1/cConnect.JPG" width="35%" height="80%"/>
    </p>
    <p align = "center">
    <i> Terminal window </i>
    </p>  
    <p align="center">
    <img src ="/pics/lab1/dSetting.JPG" width="25%" height="80%"/>
    </p>
    <p align = "center">
    <i> SDK Terminal Settings </i>
    </p>  


    You can find the COM port from the Windows Device Manager
1.	Run the mem_test application and verify the functionality.
1.	In SDK, select the mem_test project in Project Explorer, right-click and select **Run As > Launch on Hardware (System Debugger)** to download the application, and will execute ps7_init, and then execute mem_test.elf (user application).

1.	You should see the following output on the Terminal tab.

    <p align="center">
    <img src ="/pics/lab1/etermop.jpg" width="80%"  height="80%"/>
    </p>
    <p align = "center">
    <i> SDK Terminal Output </i>
    </p>  

    Such an output was generated becuase we are neither using the Data Caches nor the Instruction Cache of the Microblaze. Hence, there it shows cache memory is disabled.

1.	Close SDK and Vivado  by selecting  **File > Exit**  in each program.      

## Conclusion

Vivado and the IP Integrator allow base embedded processor systems and applications to be generated very quickly. After the system has been defined, the hardware can be exported and SDK can be invoked from Vivado.

Software development is done in SDK which provides several application templates including memory tests. You verified the operation of the hardware by using a test application, executing on the processor, and observing the output in the serial terminal window.
