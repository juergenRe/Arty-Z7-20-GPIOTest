-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Dec 17 14:03:46 2019
-- Host        : CHGFN1A945754 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/s91153/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_system_ila_0_0/GPIOTest_system_ila_0_0_stub.vhdl
-- Design      : GPIOTest_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GPIOTest_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end GPIOTest_system_ila_0_0;

architecture stub of GPIOTest_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[31:0],probe2[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_76a3,Vivado 2019.1";
begin
end;
