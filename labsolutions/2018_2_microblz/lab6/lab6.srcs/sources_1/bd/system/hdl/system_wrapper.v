//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Aug 16 11:21:12 2018
//Host        : XIREASHANW30 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (LED_0,
    buttons_tri_i,
    reset_0,
    switches_tri_i,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [15:0]LED_0;
  input [4:0]buttons_tri_i;
  input reset_0;
  input [15:0]switches_tri_i;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]LED_0;
  wire [4:0]buttons_tri_i;
  wire reset_0;
  wire [15:0]switches_tri_i;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  system system_i
       (.LED_0(LED_0),
        .buttons_tri_i(buttons_tri_i),
        .reset_0(reset_0),
        .switches_tri_i(switches_tri_i),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
