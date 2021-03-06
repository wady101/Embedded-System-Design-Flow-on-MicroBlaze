# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/lab1/Nexys-4-DDR-Master.xdc

# Block Designs: bd/system/system.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system || ORIG_REF_NAME==system} -quiet] -quiet

# IP: bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_microblaze_0_0 || ORIG_REF_NAME==system_microblaze_0_0} -quiet] -quiet

# IP: bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_clk_wiz_1_4 || ORIG_REF_NAME==system_clk_wiz_1_4} -quiet] -quiet

# IP: bd/system/ip/system_mdm_1_0/system_mdm_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_mdm_1_0 || ORIG_REF_NAME==system_mdm_1_0} -quiet] -quiet

# IP: bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==system_rst_clk_wiz_1_100M_0} -quiet] -quiet

# IP: bd/system/ip/system_microblaze_0_axi_periph_0/system_microblaze_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_microblaze_0_axi_periph_0 || ORIG_REF_NAME==system_microblaze_0_axi_periph_0} -quiet] -quiet

# IP: bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_dlmb_v10_0 || ORIG_REF_NAME==system_dlmb_v10_0} -quiet] -quiet

# IP: bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_ilmb_v10_0 || ORIG_REF_NAME==system_ilmb_v10_0} -quiet] -quiet

# IP: bd/system/ip/system_dlmb_bram_if_cntlr_0/system_dlmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_dlmb_bram_if_cntlr_0 || ORIG_REF_NAME==system_dlmb_bram_if_cntlr_0} -quiet] -quiet

# IP: bd/system/ip/system_ilmb_bram_if_cntlr_0/system_ilmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_ilmb_bram_if_cntlr_0 || ORIG_REF_NAME==system_ilmb_bram_if_cntlr_0} -quiet] -quiet

# IP: bd/system/ip/system_lmb_bram_0/system_lmb_bram_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_lmb_bram_0 || ORIG_REF_NAME==system_lmb_bram_0} -quiet] -quiet

# IP: bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_axi_uartlite_0_0 || ORIG_REF_NAME==system_axi_uartlite_0_0} -quiet] -quiet

# IP: bd/system/ip/system_xbar_0/system_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_xbar_0 || ORIG_REF_NAME==system_xbar_0} -quiet] -quiet

# IP: bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] -quiet

# IP: bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_1 || ORIG_REF_NAME==system_axi_gpio_0_1} -quiet] -quiet

# IP: bd/system/ip/system_auto_pc_1/system_auto_pc_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_auto_pc_1 || ORIG_REF_NAME==system_auto_pc_1} -quiet] -quiet

# IP: bd/system/ip/system_auto_pc_0/system_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==system_auto_pc_0 || ORIG_REF_NAME==system_auto_pc_0} -quiet] -quiet

# XDC: bd/system/ip/system_microblaze_0_0/system_microblaze_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_microblaze_0_0 || ORIG_REF_NAME==system_microblaze_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_microblaze_0_0/system_microblaze_0_0_ooc_debug.xdc

# XDC: bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_clk_wiz_1_4 || ORIG_REF_NAME==system_clk_wiz_1_4} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_clk_wiz_1_4 || ORIG_REF_NAME==system_clk_wiz_1_4} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/system/ip/system_clk_wiz_1_4/system_clk_wiz_1_4_ooc.xdc

# XDC: bd/system/ip/system_mdm_1_0/system_mdm_1_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_mdm_1_0 || ORIG_REF_NAME==system_mdm_1_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_mdm_1_0/system_mdm_1_0_ooc_trace.xdc

# XDC: bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==system_rst_clk_wiz_1_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==system_rst_clk_wiz_1_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_rst_clk_wiz_1_100M_0/system_rst_clk_wiz_1_100M_0_ooc.xdc

# XDC: bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_dlmb_v10_0 || ORIG_REF_NAME==system_dlmb_v10_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_dlmb_v10_0/system_dlmb_v10_0_ooc.xdc

# XDC: bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_ilmb_v10_0 || ORIG_REF_NAME==system_ilmb_v10_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_ilmb_v10_0/system_ilmb_v10_0_ooc.xdc

# XDC: bd/system/ip/system_dlmb_bram_if_cntlr_0/system_dlmb_bram_if_cntlr_0_ooc.xdc

# XDC: bd/system/ip/system_ilmb_bram_if_cntlr_0/system_ilmb_bram_if_cntlr_0_ooc.xdc

# XDC: bd/system/ip/system_lmb_bram_0/system_lmb_bram_0_ooc.xdc

# XDC: bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_uartlite_0_0 || ORIG_REF_NAME==system_axi_uartlite_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0_ooc.xdc

# XDC: bd/system/ip/system_axi_uartlite_0_0/system_axi_uartlite_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_uartlite_0_0 || ORIG_REF_NAME==system_axi_uartlite_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_xbar_0/system_xbar_0_ooc.xdc

# XDC: bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0_ooc.xdc

# XDC: bd/system/ip/system_axi_gpio_0_0/system_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_0 || ORIG_REF_NAME==system_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_1 || ORIG_REF_NAME==system_axi_gpio_0_1} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1_ooc.xdc

# XDC: bd/system/ip/system_axi_gpio_0_1/system_axi_gpio_0_1.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==system_axi_gpio_0_1 || ORIG_REF_NAME==system_axi_gpio_0_1} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/system/ip/system_auto_pc_1/system_auto_pc_1_ooc.xdc

# XDC: bd/system/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc

# XDC: bd/system/system_ooc.xdc
