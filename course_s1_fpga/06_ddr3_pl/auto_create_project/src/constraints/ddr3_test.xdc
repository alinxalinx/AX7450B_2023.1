set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# Set DCI_CASCADE          
set_property slave_banks {33 35} [get_iobanks 34]

create_clock -period 20.000 [get_ports sys_clk]


set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]
set_property PACKAGE_PIN AB19 [get_ports sys_clk]


set_property IOSTANDARD LVCMOS18 [get_ports sys_rst]
set_property PACKAGE_PIN AC12 [get_ports sys_rst]

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

set_property VCCAUX_IO DONTCARE [get_ports fan_pwm]
set_property IOSTANDARD LVCMOS18 [get_ports fan_pwm]
set_property PACKAGE_PIN AB24 [get_ports fan_pwm]

