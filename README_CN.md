# Xilinx Zynq 7000 系列开发板AX7450、AX7450B  
## 开发板介绍
### 开发板简介
开发板主要由 ZYNQ7100 主芯片，6 片 DDR3，1 片 eMMC，2 个 QSPI FLASH 和一些
外设接口组成。 ZYNQ7100 采 用 Xilinx 公司的 Zynq7000 系 列 的 芯 片 ，型号为
XC7Z100-2FFG900。ZYNQ710 芯片可分成处理器系统部分 Processor System（PS）和可
编程逻辑部分 Programmable Logic（PL）。在 ZYNQ7100 芯片的 PS 端挂了 2 片 DDR3，
PL 端挂了 4 片 DDR3，每片 DDR3 容量高达 512M 字节，使得 ARM 系统和 FPGA 系统能独
立处理和存储的数据的功能。PS 端的 8GB eMMC FLASH 存储芯片和 2 片 256Mb 的 QSPI 
FLASH 用来静态存储 ZYNQ 的操作系统、文件系统及用户数据。
AX7450B 开发板扩展了丰富的外围接口，其中包含 1 个 PCIex8 接口、1 路千兆以太网
接口、1 路 USB2.0 OTG 接口、1 路 UART 串口接口、1 路 SD 卡接口、1 个 FMC HPC 扩展
接口，2 路 SMA 接口，和一些按键 LED。
### 关键特性
  1. Xilinx ARM+FPGA 芯片 Zynq-7000 XC7Z100-2FFG900。 
  2. 带有 6 片大容量的 512M 字节（共 3GB）高速 DDR3 SDRAM。其中 2 片挂载在 PS 端，组成 32 位的数据宽度，可作为 ZYNQ 芯片数据的缓存，也可以作为操作系统运行的内存; 另外 4 片挂在 PL 端，组成 64 位数据宽度，可作为 FPGA 的数据存储，图像分析缓存，数据处理。   
  3. PS 端挂载一片 8GB eMMC FLASH 存储芯片，用户存储操作系统文件或者其他用户数据。 
  4. 2 片 256Mbit 的 QSPI FLASH 存储芯片, 可用作 ZYNQ 芯片的 Uboot 文件，系统文件和用户数据的存储;
  5. 支持 PCI Express 2.0 标准，提供标准的 PCIe x8 高速数据传输接口，单通道通信速率可高达 5GBaud。   
  6. 1 路 10/100M/1000M 以太网 RJ45 接口，用于和电脑或其它网络设备进行以太网数据交换。网络接口芯片采用景略半导体的 JL2121 工业级 GPHY 芯片，以太网连接到 ZYNQ 芯片的 PS 端。 
  7. 用于和 PC 或 USB 设备的 OTG 通信, 连接器采用 MINI USB 接口。  
  8. 1 路 Uart 转 USB 接口，用于和电脑通信，方便用户调试。USB 接口采用 MINI USB 接口。 
  9. 1 路 Micro SD 卡座，用于存储操作系统镜像和文件系统。 
  10. 1 个标准的 FMC HPC 的扩展口，可以外接 XILINX 或者我们黑金的各种 FMC 模块（HDMI 输入输出模块，双目摄像头模块，高速 AD 模块等等）。FMC 扩展口包含 84 对差分 IO 信号和 8 路高速 GTX 收发信号。 
  11. 1 个 USB JTAG 口，通过下载器对 ZYNQ 系统进行调试和下载
  12. 2 路 SMA 接口，用户可以连接外部触发信号或者时钟信号。
  13. 板载一个 33.333Mhz 的有源晶振，给 PS 系统提供稳定的时钟源，一个 50MHz 的有源晶振，为 PL 逻辑提供额外的时钟；另外板上有一个可编程的时钟芯片给 GTX 提供时钟源，为 PCIE，光纤和 DDR 工作提供参考时钟。
  14. 1 个电源指示灯，1 个 DONE 指示灯，4 个用户调试 LED 灯, 1 个前面板双色 LED 灯。 
  15. 2 个按键，1 个复位按键，1 个 PL 用户按键。  


# AX7450B、AX7450B 文档教程链接
https://ax7450b-20231-v101.readthedocs.io/zh-cn/latest/7450B_S1_RSTdocument_CN/00_%E5%85%B3%E4%BA%8EALINX_CN.html

 注意：文档的末尾页脚处可以切换中英文语言

# AX7450,AX7450B 例程
## 例程描述
此项目为开发板出厂例程，支持板卡上的大部分外设。
## 开发环境及需求
* Vivado 2023.1
* AX7450/AX7450B开发板
## 创建Vivado工程
* 下载最新的ZIP包。
* 创建新的工程文件夹.
* 解压下载的ZIP包到此工程文件夹中。


有两种方法创建Vivado工程，如下所示：
### 利用Vivado tcl console创建Vivado工程
1. 打开Vivado软件并且利用**cd**命令进入"**auto_create_project**"目录，并回车
```
cd \<archive extracted location\>/vivado/auto_create_project
```
2. 输入 **source ./create_project.tcl** 并且回车
```
source ./create_project.tcl
```

### 利用bat创建Vivado工程
1. 在 "**auto_create_project**" 文件夹, 有个 "**create_project.bat**"文件, 右键以编辑模式打开，并且修改vivado路径为本主机vivado安装路径，保存并关闭。
```
CALL E:\XilinxVitis\Vivado\2023.1\bin\vivado.bat -mode batch -source create_project.tcl
PAUSE
```
2. 在Windows下双击bat文件即可。


更多信息, 请访问[ALINX网站](https://www.alinx.com)