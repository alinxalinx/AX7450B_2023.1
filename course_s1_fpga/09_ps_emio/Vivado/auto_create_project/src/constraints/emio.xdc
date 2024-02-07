set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property IOSTANDARD LVCMOS18 [get_ports {emio_tri_io[*]}]
#pl led
set_property PACKAGE_PIN AC16 [get_ports {emio_tri_io[0]}]
set_property PACKAGE_PIN AB17 [get_ports {emio_tri_io[1]}]
set_property PACKAGE_PIN AB16 [get_ports {emio_tri_io[2]}]
set_property PACKAGE_PIN AA17 [get_ports {emio_tri_io[3]}]
#pl key
set_property PACKAGE_PIN AC12 [get_ports {emio_tri_io[4]}]