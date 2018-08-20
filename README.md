# Embedded System Design Flow on MicroBlaze



## Labs outline

The purpose of the lab exercises is to walk you through a complete hardware and software processor system design. Each lab will build upon the previous lab. The following diagram represents the completed design .

   <p align="center">
   <img src ="/pics/Readme/Completed_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design</i>
   </p>

## Source file Setup

To use the source files for each of the labs in this workshop, you have to clone this repository from Github. For that, do the following:

  If in **Windows**, download [Cmder](http://cmder.net/) or download [Git Bash](https://git-scm.com/download/win)

  If in **Ubuntu (or any Debian distribution)**, install git from the aptitude package manager by running this command in a terminal window:
  ```
  sudo apt-get install git
  ```

  After installing, set up git from [here](https://help.github.com/articles/set-up-git/).  Then open a new git-bash/cmder/terminal window and run the following command:
  ```
  git clone https://github.com/wady100/Embedded-System-Design-Flow-on-MicroBlaze.git
  ```
  In the instructions for the labs;
  <!--shit gets reall from here -->
  **{sources}** refers to the location where you will get the base files for the labs [here](https://github.com/wady100/Embedded-System-Design-Flow-on-MicroBlaze/tree/master/sources)

  **{labs}** refers to the location which you will use as your workspace for the labs in the workshop

  **{labsolutions}** refers to [here](https://github.com/wady100/Embedded-System-Design-Flow-on-MicroBlaze/tree/master/labsolutions/2018_2_microblz)

  ---
  **NOTE**

  Board support for the Basys3 and Nexys 4 DDR are not included in Vivado 2018.2 by default. The relevant files need to be extracted and saved to:

   {Vivado installation}\data\boards\board_files\

  These files can be downloaded from [/board_files](https://github.com/wady100/Embedded-System-Design-Flow-on-MicroBlaze/tree/master/board_files) where this material is hosted.

  ---

## Hardware Setup

**Basys 3**:Connect a micro USB from the board to the PC. Make sure that a jumper is connected to JTAG (between JP1_2 and JP1_3) and another one of them should be connected across the USB pins (between JP1_2 and JP1_3)

**Nexys 4 DDR**: Attach a micro USB cable in the slot provided. A jumper should be connected across USB (JP2_1 and JP2_2), another one should be across JTAG (JP1_2 and JP2_3) and finally one across USB for power(JP3_1 and JP_2)

## Labs Overview:

### Lab 1

In this lab, you will use Vivado Suite and SDK to create a processor system consisting of the Microblaze processor IP and UART for serial communication

   <p align="center">
   <img src ="/pics/Readme/lab1_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design of Lab 1</i>
   </p>

### Lab 2

This lab guides you through the process of adding additional IP to an existing processor system. You will add GPIO peripherals from the IP Catalog tab to interface to the push buttons and DIP switches on the Nexys4 DDR / Basys 3 Board. At the end of the lab, you will generate the bitstream and test the peripherals in hardware.

   <p align="center">
   <img src ="/pics/Readme/lab2_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design of Lab 2</i>
   </p>

### Lab 3

You will extend the Lab 2 hardware design by creating and adding a AXI peripheral to the system, and connecting it to the LEDs on the Nexys4 DDR / Basys 3 Board. After creating your own custom IP, you will connect the peripheral to the system and add pin location constraints to connect the LEDs controller peripheral to the on-board LEDs.  

   <p align="center">
   <img src ="/pics/Readme/lab3_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design of Lab 3</i>
   </p>

### Lab 4

This lab guides you through the process of writing a basic software application.  The software
will write to the LEDs on the Nexys4 DDR / Basys 3 Board.  You will add a BRAM controller and modify the linker script to place the text section in the BRAM.  Finally, you will verify that the design operates as expected in hardware.

   <p align="center">
   <img src ="/pics/Readme/lab4_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design of Lab 4</i>
   </p>

### Lab 5

This lab guides you through the process of adding timer and interrupt controller to an embedded system and writing a software application that utilizes these timer and interrupt controller.  The SDK will be used to create and debug the software application.

   <p align="center">
   <img src ="/pics/Readme/lab5_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design of Lab 5</i>
   </p>

### Lab 6
This lab guides you through the process of performing on-chip hardware/software verification using Vivado 's Inegrated Logic Analyzer (ILA) debugging IP and the software debugger.  

   <p align="center">
   <img src ="/pics/Readme/lab6_dn.jpg"  width="70%" height="80%"/>
   </p>
   <p align = "center">
   <i>Completed Design of Lab 6</i>
   </p>
