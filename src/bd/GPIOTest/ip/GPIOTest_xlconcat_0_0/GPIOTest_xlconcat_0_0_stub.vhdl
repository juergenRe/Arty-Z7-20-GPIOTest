-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Sep 14 10:09:37 2018
-- Host        : ASYS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Juergen/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_xlconcat_0_0/GPIOTest_xlconcat_0_0_stub.vhdl
-- Design      : GPIOTest_xlconcat_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GPIOTest_xlconcat_0_0 is
  Port ( 
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end GPIOTest_xlconcat_0_0;

architecture stub of GPIOTest_xlconcat_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "In0[0:0],In1[0:0],dout[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4";
begin
end;
