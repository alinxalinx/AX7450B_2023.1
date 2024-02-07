##################Compress Bitstream############################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

create_clock -period 20 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property PACKAGE_PIN AB19  [get_ports {clk}]

set_property IOSTANDARD LVCMOS18 [get_ports {rst_n}]
set_property PACKAGE_PIN AC12  [get_ports {rst_n}]