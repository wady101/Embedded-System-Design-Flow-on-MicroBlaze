# Embedded System Design Flow on MicroBlaze



## Labs outline

Embedded Systems Development brings experienced FPGA designers up to speed on the capabilities and characteristics of the Xilinx MicroBlaze™ 32-bit soft processor core and the Embedded Development Kit (EDK) design environment. Developing embedded systems using the MicroBlaze and a set of soft peripherals is also included in the lectures and labs.

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
  **{sources}** refers to the location where you will get the base files for the labs [here](https://github.com/wady100/Embedded-System-Design-Flow-on-Zynq/tree/2018.1/sources)

  **{labs}** refers to the location which you will use as your workspace for the labs in the workshop

  **{labsolutions}** refers to [here](https://github.com/wady100/Embedded-System-Design-Flow-on-Zynq/tree/2018.1/labsolutions/embedded)

# 1.     Install Xilinx software

Professors may submit the online donation request form at <http://www.xilinx.com/member/xup/donation/request.htm> to obtain the latest Xilinx software.  The workshop was tested on a PC running MicroSoft Windows 7 Enterprise edition.  Debug is verified using SDK Terminal program.

  V14.2 EDK

  V14.2 ISE Foundation Software

  V14.2  Chipscope-Pro

  Download and install software drivers, for serial communication using mini-USB2 cable, available at <http://www.ftdichip.com/Drivers/VCP.htm>

  Download and install the board related “Digilent Plugin” available at http://www.digilentinc.com/Data/Products/NEXYS3/Nexys3_BSB_Support_v_2_6.zip and executing inst_uninst.bat filelocated at <extracted_dir>\Nexys3_BSB_Support_v_2_6\Digilent_AXI_IPCore_Support_v_1_33 after extracting the zip file.



**2.**     **Setup hardware**

Connect Nexys3 Board

a.     Connect programming cable between configuration port of Nexys3 Board and PC

b.     Connect another micro USB cable between Nexys3 Board’s UART port  and PC USB port

c.     Connect the power supply and power on the board



3.     **Install distribution**

Extract the labsource.zip file in c:\xup\embedded directory.   This will generate source folder and also extract two zip files (xmd_32.zip and xmd_64.zip), which are required for lab6 (see lab6 documentation)..

The docs_pdf.zip file consists of lab documents and presentations in PDF format.  Extract this zip file in c:\xup\embedded\ directory or any directory of your choice.





**4.**     **For Professors only**

Download the labsolution.zip and docs_source.zip files using your membership account.  Do not distribute them to students or post them on a web site. The docs_source.zip file contains lab documents in Microsoft Word and presentations in PowerPoint format for you to use in your classroom.
