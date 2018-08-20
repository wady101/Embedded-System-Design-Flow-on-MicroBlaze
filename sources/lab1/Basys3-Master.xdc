# Clock signal
set_property PACKAGE_PIN W5 [get_ports diff_clock_rtl_clk_p]
	set_property IOSTANDARD LVCMOS33 [get_ports diff_clock_rtl_clk_p]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports diff_clock_rtl_clk_p]

##Buttons

set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]


##USB-RS232 Interface

set_property PACKAGE_PIN B18 [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]
set_property PACKAGE_PIN A18 [get_ports usb_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]
