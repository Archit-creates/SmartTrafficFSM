

set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]


set_property PACKAGE_PIN U17 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]


set_property PACKAGE_PIN U16 [get_ports {lights[0]}]  
set_property PACKAGE_PIN V16 [get_ports {lights[1]}]  
set_property PACKAGE_PIN W16 [get_ports {lights[2]}]  
set_property IOSTANDARD LVCMOS33 [get_ports lights[*]]
