set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]
set_property PACKAGE_PIN AC16 [get_ports {led[0]}]
set_property PACKAGE_PIN AB17 [get_ports {led[1]}]
set_property PACKAGE_PIN AB16 [get_ports {led[2]}]
set_property PACKAGE_PIN AA17 [get_ports {led[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN AB19 [get_ports sys_clk]

set_property PACKAGE_PIN AC12 [get_ports rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports rst_n]

create_clock -period 20.000 -name sys_clk -waveform {0.000 10.000} [get_ports sys_clk]