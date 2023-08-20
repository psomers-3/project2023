//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Tue Jul 25 12:29:33 2023
//Host        : PatLaptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (leds_0,
    reset,
    switches_0,
    sys_clock);
  output [3:0]leds_0;
  input reset;
  input [3:0]switches_0;
  input sys_clock;

  wire [3:0]leds_0;
  wire reset;
  wire [3:0]switches_0;
  wire sys_clock;

  design_1 design_1_i
       (.leds_0(leds_0),
        .reset(reset),
        .switches_0(switches_0),
        .sys_clock(sys_clock));
endmodule
