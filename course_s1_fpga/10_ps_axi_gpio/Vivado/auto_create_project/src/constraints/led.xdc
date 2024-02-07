set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property IOSTANDARD LVCMOS18 [get_ports {leds_tri_o[*]}]

set_property PACKAGE_PIN AC16 [get_ports {leds_tri_o[0]}]
set_property PACKAGE_PIN AB17 [get_ports {leds_tri_o[1]}]
set_property PACKAGE_PIN AB16 [get_ports {leds_tri_o[2]}]
set_property PACKAGE_PIN AA17 [get_ports {leds_tri_o[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {keys_tri_i[0]}]
set_property PACKAGE_PIN AC12 [get_ports {keys_tri_i[0]}]
