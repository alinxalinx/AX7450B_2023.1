# Xilinx Zynq 7000 series development boards AX7450, AX7450B
## Development board introduction
### Development board introduction
The development board mainly consists of ZYNQ7100 main chip, 6 DDR3 chips, 1 eMMC, 2 QSPI FLASH and some
Peripheral interface composition. ZYNQ7100 uses Xilinx's Zynq7000 series of chips, model number is
XC7Z100-2FFG900. The ZYNQ710 chip can be divided into the processor system part Processor System (PS) and the
Programmable Logic (PL). Two pieces of DDR3 are installed on the PS side of the ZYNQ7100 chip.
The PL end is equipped with 4 pieces of DDR3, each piece of DDR3 has a capacity of up to 512M bytes, allowing the ARM system and FPGA system to independently
The function of independent processing and storage of data. 8GB eMMC FLASH memory chip and 2 pieces of 256Mb QSPI on the PS side
FLASH is used to statically store ZYNQ's operating system, file system and user data.
The AX7450B development board expands a rich set of peripheral interfaces, including 1 PCIex8 interface and 1 Gigabit Ethernet
interface, 1 USB2.0 OTG interface, 1 UART serial interface, 1 SD card interface, 1 FMC HPC expansion
interface, 2-way SMA interface, and some button LEDs.
### Key Features
1. Xilinx ARM+FPGA chip Zynq-7000 XC7Z100-2FFG900.
2. Equipped with 6 pieces of large-capacity 512M bytes (3GB in total) high-speed DDR3 SDRAM. Two of them are mounted on the PS side, forming a 32-bit data width, which can be used as a cache for ZYNQ chip data, and can also be used as memory for operating system running; the other four are mounted on the PL side, forming a 64-bit data width, which can be used as an FPGA Data storage, image analysis caching, and data processing.
3. An 8GB eMMC FLASH memory chip is mounted on the PS side, and the user stores operating system files or other user data.
4. Two 256Mbit QSPI FLASH memory chips, which can be used to store Uboot files, system files and user data of the ZYNQ chip;
5. Supports the PCI Express 2.0 standard and provides a standard PCIe x8 high-speed data transmission interface, with a single-channel communication rate up to 5GBaud.
6. 1 channel 10/100M/1000M Ethernet RJ45 interface, used for Ethernet data exchange with computers or other network devices. The network interface chip uses Jinglue Semiconductor's JL2121 industrial-grade GPHY chip, and the Ethernet is connected to the PS end of the ZYNQ chip.
7. Used for OTG communication with PC or USB device, the connector adopts MINI USB interface.
8. 1-way Uart to USB interface, used to communicate with the computer to facilitate user debugging. The USB interface adopts MINI USB interface.
9. 1-way Micro SD card holder for storing operating system images and file systems.
10. 1 standard FMC HPC expansion port, which can be connected to XILINX or various FMC modules of our Black Gold (HDMI input and output module, binocular camera module, high-speed AD module, etc.). The FMC expansion port contains 84 pairs of differential IO signals and 8 channels of high-speed GTX transceiver signals.
11. 1 USB JTAG port, debug and download the ZYNQ system through the downloader
12. 2-way SMA interface, users can connect external trigger signals or clock signals.
13. There is a 33.333Mhz active crystal oscillator on the board to provide a stable clock source for the PS system, and a 50MHz active crystal oscillator to provide an additional clock for the PL logic; in addition, there is a programmable clock chip on the board to provide a clock for the GTX Source, providing reference clock for PCIE, fiber optic and DDR operation.
14. 1 power indicator light, 1 DONE indicator light, 4 user debugging LED lights, 1 front panel dual-color LED light.
15. 2 buttons, 1 reset button, 1 PL user button.


# AX7450B、AX7450B document tutorial link


 Note: You can switch between Chinese and English languages at the footer at the end of the document

# AX7450, AX7450B routine
## Routine description
This project is the factory routine of the development board and supports most peripherals on the board.
## Development environment and requirements
* Vivado 2023.1
* AX7450/AX7450B development board
## Create Vivado project
* Download the latest ZIP package.
* Create a new project folder.
* Unzip the downloaded ZIP package into this project folder.


There are two ways to create a Vivado project, as follows:
### Use Vivado tcl console to create a Vivado project
1. Open the Vivado software and use the **cd** command to enter the "**auto_create_project**" directory and press Enter
```
cd \<archive extracted location\>/vivado/auto_create_project
```
2. Enter **source ./create_project.tcl** and press Enter
```
source ./create_project.tcl
```

### Use bat to create a Vivado project
1. In the "**auto_create_project**" folder, there is a "**create_project.bat**" file, right-click to open it in edit mode, and modify the vivado path to the vivado installation path of this host, save and close.
```
CALL E:\XilinxVitis\Vivado\2023.1\bin\vivado.bat -mode batch -source create_project.tcl
PAUSE
```
2. Double-click the bat file under Windows.


For more information, please visit [ALINX website](https://www.alinx.com)