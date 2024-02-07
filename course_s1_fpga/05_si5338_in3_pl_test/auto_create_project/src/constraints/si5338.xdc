set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property PACKAGE_PIN AB19 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]

#PL_KEY1
set_property PACKAGE_PIN AC12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports rst_n]

set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]
set_property PACKAGE_PIN AC16 [get_ports {led[0]}]
set_property PACKAGE_PIN AB17 [get_ports {led[1]}]
set_property PACKAGE_PIN AB16 [get_ports {led[2]}]
set_property PACKAGE_PIN AA17 [get_ports {led[3]}]

set_property PACKAGE_PIN AA22 [get_ports si5338_scl]
set_property IOSTANDARD LVCMOS18 [get_ports si5338_scl]

set_property PACKAGE_PIN AA23 [get_ports si5338_sda]
set_property IOSTANDARD LVCMOS18 [get_ports si5338_sda]

#set_property PACKAGE_PIN AC17 [get_ports si5338_ref_clk]
#set_property IOSTANDARD LVCMOS25 [get_ports si5338_ref_clk]
# PCI Express reference clock 100MHz
#set_property PACKAGE_PIN R6 [get_ports {pcie_ref_clk_p[0]}]
#set_property PACKAGE_PIN R5 [get_ports {pcie_ref_clk_n[0]}]

#ddr clk
set_property IOSTANDARD DIFF_SSTL15 [get_ports clk0_p]
set_property PACKAGE_PIN F9 [get_ports clk0_p]

set_property PACKAGE_PIN AC8 [get_ports clk1_p]
set_property PACKAGE_PIN W8 [get_ports clk2_p]

