set_property SRC_FILE_INFO {cfile:c:/xup/embedded/2018_2_microblz/lab2/lab2.srcs/sources_1/bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4.xdc rfile:../../../lab2.srcs/sources_1/bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4.xdc id:1 order:EARLY scoped_inst:system_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/xup/embedded/2018_2_microblz/lab2/lab2.srcs/constrs_1/imports/lab1/Nexys-4-DDR-Master.xdc rfile:../../../lab2.srcs/constrs_1/imports/lab1/Nexys-4-DDR-Master.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { sys_clock }]; IO_L12P_T1_MRCC_35 Sch=clk100mhz
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { reset_0 }];
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }]; IO_L7P_T1_AD6P_35 Sch=uart_txd_in
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }]; IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
