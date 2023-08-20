-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
-- Date        : Fri Jul 21 12:35:08 2023
-- Host        : PatLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Xilinx/VivadoProjects/microblaze_mcu/microblaze_mcu.gen/sources_1/bd/design_1/ip/design_1_not_gate_0_0/design_1_not_gate_0_0_stub.vhdl
-- Design      : design_1_not_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_not_gate_0_0 is
  Port ( 
    x : in STD_LOGIC;
    y : out STD_LOGIC
  );

end design_1_not_gate_0_0;

architecture stub of design_1_not_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "x,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "not_gate,Vivado 2022.1";
begin
end;
