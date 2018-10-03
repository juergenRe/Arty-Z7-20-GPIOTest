-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Oct  3 12:33:26 2018
-- Host        : ASYS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Juergen/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_GPIOInterface_0_0/GPIOTest_GPIOInterface_0_0_stub.vhdl
-- Design      : GPIOTest_GPIOInterface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GPIOTest_GPIOInterface_0_0 is
  Port ( 
    GPIOPortWr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GPIOPortRd : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    DIn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SEL : out STD_LOGIC;
    nen_ctrl0 : out STD_LOGIC;
    nen_idb : out STD_LOGIC;
    nen_adl : out STD_LOGIC;
    nen_adh : out STD_LOGIC;
    phi1 : out STD_LOGIC;
    phi2 : out STD_LOGIC
  );

end GPIOTest_GPIOInterface_0_0;

architecture stub of GPIOTest_GPIOInterface_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "GPIOPortWr[31:0],GPIOPortRd[31:0],clk,reset_n,DIn[7:0],DOut[7:0],MUX[2:0],SEL,nen_ctrl0,nen_idb,nen_adl,nen_adh,phi1,phi2";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "GPIOInterface,Vivado 2017.4";
begin
end;
