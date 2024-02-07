set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#ddr3 reference clock 200MHz
set_property PACKAGE_PIN F9 [get_ports {sys_clk_p}]
set_property PACKAGE_PIN E8 [get_ports {sys_clk_n}]

set_property PACKAGE_PIN AA22 [get_ports si5338_scl]
set_property IOSTANDARD LVCMOS18 [get_ports si5338_scl]

set_property PACKAGE_PIN AA23 [get_ports si5338_sda]
set_property IOSTANDARD LVCMOS18 [get_ports si5338_sda]

create_clock -period 20.000 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN AB19 [get_ports sys_clk]