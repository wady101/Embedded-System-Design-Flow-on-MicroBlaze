vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v10_0_7
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_14
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib questa_lib/msim/blk_mem_gen_v8_4_1
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_21
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_17
vlib questa_lib/msim/fifo_generator_v13_2_2
vlib questa_lib/msim/axi_data_fifo_v2_1_16
vlib questa_lib/msim/axi_crossbar_v2_1_18
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_19
vlib questa_lib/msim/blk_mem_gen_v8_3_6
vlib questa_lib/msim/axi_bram_ctrl_v4_0_14
vlib questa_lib/msim/axi_timer_v2_0_19
vlib questa_lib/msim/axi_intc_v4_1_11
vlib questa_lib/msim/axi_protocol_converter_v2_1_17

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v10_0_7 questa_lib/msim/microblaze_v10_0_7
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_14 questa_lib/msim/mdm_v3_2_14
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_1 questa_lib/msim/blk_mem_gen_v8_4_1
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_21 questa_lib/msim/axi_uartlite_v2_0_21
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_17 questa_lib/msim/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 questa_lib/msim/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 questa_lib/msim/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 questa_lib/msim/axi_crossbar_v2_1_18
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 questa_lib/msim/axi_gpio_v2_0_19
vmap blk_mem_gen_v8_3_6 questa_lib/msim/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_14 questa_lib/msim/axi_bram_ctrl_v4_0_14
vmap axi_timer_v2_0_19 questa_lib/msim/axi_timer_v2_0_19
vmap axi_intc_v4_1_11 questa_lib/msim/axi_intc_v4_1_11
vmap axi_protocol_converter_v2_1_17 questa_lib/msim/axi_protocol_converter_v2_1_17

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_7 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_microblaze_0_0/sim/system_microblaze_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_14 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_clk_wiz_1_100M_0/sim/system_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_dlmb_v10_0/sim/system_dlmb_v10_0.vhd" \
"../../../bd/system/ip/system_ilmb_v10_0/sim/system_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_dlmb_bram_if_cntlr_0/sim/system_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/system/ip/system_ilmb_bram_if_cntlr_0/sim/system_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/ip/system_lmb_bram_0/sim/system_lmb_bram_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_21 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_uartlite_0_0/sim/system_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/sim/system.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/ipshared/d44b/hdl/led_ip_v1_0_S_AXI.v" \
"../../../bd/system/ipshared/d44b/src/lab3_user_logic.v" \
"../../../bd/system/ipshared/d44b/hdl/led_ip_v1_0.v" \
"../../../bd/system/ip/system_led_ip_0_0/sim/system_led_ip_0_0.v" \

vlog -work blk_mem_gen_v8_3_6 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_14 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/6db1/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/ip/system_axi_bram_ctrl_0_bram_0/sim/system_axi_bram_ctrl_0_bram_0.v" \

vcom -work axi_timer_v2_0_19 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/0a2c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_timer_0_0/sim/system_axi_timer_0_0.vhd" \

vcom -work axi_intc_v4_1_11 -64 -93 \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/2fec/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_intc_0_0/sim/system_axi_intc_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_17 -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../../lab5.srcs/sources_1/bd/system/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/b65a" "+incdir+../../../../lab5.srcs/sources_1/bd/system/ipshared/ec67/hdl" \
"../../../bd/system/ip/system_auto_pc_5/sim/system_auto_pc_5.v" \
"../../../bd/system/ip/system_auto_pc_4/sim/system_auto_pc_4.v" \
"../../../bd/system/ip/system_auto_pc_3/sim/system_auto_pc_3.v" \
"../../../bd/system/ip/system_auto_pc_2/sim/system_auto_pc_2.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/ip/system_auto_pc_6/sim/system_auto_pc_6.v" \

vlog -work xil_defaultlib \
"glbl.v"

