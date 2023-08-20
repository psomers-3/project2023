// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Jul 21 12:35:08 2023
// Host        : PatLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx/VivadoProjects/microblaze_mcu/microblaze_mcu.gen/sources_1/bd/design_1/ip/design_1_not_gate_0_0/design_1_not_gate_0_0_stub.v
// Design      : design_1_not_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "not_gate,Vivado 2022.1" *)
module design_1_not_gate_0_0(x, y)
/* synthesis syn_black_box black_box_pad_pin="x,y" */;
  input x;
  output y;
endmodule