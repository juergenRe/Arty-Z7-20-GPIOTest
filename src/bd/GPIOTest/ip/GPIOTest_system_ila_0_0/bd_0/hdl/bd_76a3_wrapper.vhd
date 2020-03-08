--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_76a3_wrapper.bd
--Design : bd_76a3_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_76a3_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end bd_76a3_wrapper;

architecture STRUCTURE of bd_76a3_wrapper is
  component bd_76a3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component bd_76a3;
begin
bd_76a3_i: component bd_76a3
     port map (
      clk => clk,
      probe0(0) => probe0(0),
      probe1(31 downto 0) => probe1(31 downto 0),
      probe2(31 downto 0) => probe2(31 downto 0)
    );
end STRUCTURE;
