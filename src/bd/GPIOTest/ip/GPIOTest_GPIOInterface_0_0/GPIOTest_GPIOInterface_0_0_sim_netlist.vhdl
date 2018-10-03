-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Oct  3 12:33:26 2018
-- Host        : ASYS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Juergen/Documents/FPGA/Arty-Z7/Arty-Z7-20-GPIOTest/src/bd/GPIOTest/ip/GPIOTest_GPIOInterface_0_0/GPIOTest_GPIOInterface_0_0_sim_netlist.vhdl
-- Design      : GPIOTest_GPIOInterface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_Delay is
  port (
    sig_in : out STD_LOGIC;
    phi1 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \phiState_reg[0]\ : in STD_LOGIC;
    \phiState_reg[1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_Delay : entity is "Delay";
end GPIOTest_GPIOInterface_0_0_Delay;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_Delay is
  signal \^sig_in\ : STD_LOGIC;
  signal \tmp_reg[1]_srl2_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \tmp_reg[1]_srl2\ : label is "\U0/dly_phi1/tmp_reg ";
  attribute srl_name : string;
  attribute srl_name of \tmp_reg[1]_srl2\ : label is "\U0/dly_phi1/tmp_reg[1]_srl2 ";
begin
  sig_in <= \^sig_in\;
\delay_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phiState_reg[0]\,
      I1 => \phiState_reg[1]\,
      O => \^sig_in\
    );
\tmp_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \^sig_in\,
      Q => \tmp_reg[1]_srl2_n_0\
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg[1]_srl2_n_0\,
      Q => phi1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_Delay_0 is
  port (
    delay_reg_reg : out STD_LOGIC;
    phi2 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \phiState_reg[1]\ : in STD_LOGIC;
    \phiState_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_Delay_0 : entity is "Delay";
end GPIOTest_GPIOInterface_0_0_Delay_0;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_Delay_0 is
  signal \^delay_reg_reg\ : STD_LOGIC;
  signal \tmp_reg[1]_srl2_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \tmp_reg[1]_srl2\ : label is "\U0/dly_phi2/tmp_reg ";
  attribute srl_name : string;
  attribute srl_name of \tmp_reg[1]_srl2\ : label is "\U0/dly_phi2/tmp_reg[1]_srl2 ";
begin
  delay_reg_reg <= \^delay_reg_reg\;
delay_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \phiState_reg[1]\,
      I1 => \phiState_reg[0]\,
      O => \^delay_reg_reg\
    );
\tmp_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => \^delay_reg_reg\,
      Q => \tmp_reg[1]_srl2_n_0\
    );
\tmp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tmp_reg[1]_srl2_n_0\,
      Q => phi2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_EdgeDetect is
  port (
    delay_reg : out STD_LOGIC;
    \FSM_sequential_fifoState_reg[0]\ : out STD_LOGIC;
    fifoState13_out : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_fifoState_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_fifoState_reg[0]_0\ : in STD_LOGIC;
    fifo_reset : in STD_LOGIC;
    \phiState_reg[1]\ : in STD_LOGIC;
    \phiState_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_EdgeDetect : entity is "EdgeDetect";
end GPIOTest_GPIOInterface_0_0_EdgeDetect;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_EdgeDetect is
  signal \^delay_reg\ : STD_LOGIC;
begin
  delay_reg <= \^delay_reg\;
\FSM_sequential_fifoState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => in0(0),
      I1 => \FSM_sequential_fifoState_reg[1]\,
      I2 => \FSM_sequential_fifoState_reg[0]_0\,
      I3 => fifo_reset,
      O => \FSM_sequential_fifoState_reg[0]\
    );
delay_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sig_in,
      Q => \^delay_reg\,
      R => SR(0)
    );
\i__i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E10"
    )
        port map (
      I0 => \phiState_reg[1]\,
      I1 => \phiState_reg[0]\,
      I2 => Q(0),
      I3 => \^delay_reg\,
      O => fifoState13_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_EdgeDetect_1 is
  port (
    fifoState1 : out STD_LOGIC;
    SEL_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \phiState_reg[1]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \phiState_reg[1]_0\ : in STD_LOGIC;
    delay_reg : in STD_LOGIC;
    \phiState_reg[0]\ : in STD_LOGIC;
    \phiState_reg[1]_1\ : in STD_LOGIC;
    SEL : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fifo_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_EdgeDetect_1 : entity is "EdgeDetect";
end GPIOTest_GPIOInterface_0_0_EdgeDetect_1;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_EdgeDetect_1 is
  signal SEL_i_2_n_0 : STD_LOGIC;
  signal delay_reg_0 : STD_LOGIC;
  signal \^fifostate1\ : STD_LOGIC;
begin
  fifoState1 <= \^fifostate1\;
SEL_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABA8A8A"
    )
        port map (
      I0 => SEL,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => SEL_i_2_n_0,
      I5 => fifo_reset,
      O => SEL_reg
    );
SEL_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F00F00DDDDDDDD"
    )
        port map (
      I0 => Q(3),
      I1 => \^fifostate1\,
      I2 => \phiState_reg[1]_0\,
      I3 => Q(0),
      I4 => delay_reg,
      I5 => Q(1),
      O => SEL_i_2_n_0
    );
delay_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phiState_reg[1]\,
      Q => delay_reg_0,
      R => SR(0)
    );
\i__i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B40"
    )
        port map (
      I0 => \phiState_reg[0]\,
      I1 => \phiState_reg[1]_1\,
      I2 => Q(2),
      I3 => delay_reg_0,
      O => \^fifostate1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_fifo is
  port (
    full : out STD_LOGIC;
    \FSM_sequential_fifoState_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MUX_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \DOut_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_rd_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    fifo_reset : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_fifoState_reg[1]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    blClkIn : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd : in STD_LOGIC;
    GPIOPortWr : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_fifo : entity is "fifo";
end GPIOTest_GPIOInterface_0_0_fifo;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_fifo is
  signal \DOut[0]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[0]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[0]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[0]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[1]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[1]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[1]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[1]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[2]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[2]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[2]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[2]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[3]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[3]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[3]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[3]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[4]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[4]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[4]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[4]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[5]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[5]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[5]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[5]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[6]_i_4_n_0\ : STD_LOGIC;
  signal \DOut[6]_i_5_n_0\ : STD_LOGIC;
  signal \DOut[6]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[6]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[7]_i_6_n_0\ : STD_LOGIC;
  signal \DOut[7]_i_7_n_0\ : STD_LOGIC;
  signal \DOut[7]_i_8_n_0\ : STD_LOGIC;
  signal \DOut[7]_i_9_n_0\ : STD_LOGIC;
  signal \DOut_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \DOut_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \DOut_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \DOut_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \MUX[0]_i_4_n_0\ : STD_LOGIC;
  signal \MUX[0]_i_5_n_0\ : STD_LOGIC;
  signal \MUX[0]_i_6_n_0\ : STD_LOGIC;
  signal \MUX[0]_i_7_n_0\ : STD_LOGIC;
  signal \MUX[1]_i_4_n_0\ : STD_LOGIC;
  signal \MUX[1]_i_5_n_0\ : STD_LOGIC;
  signal \MUX[1]_i_6_n_0\ : STD_LOGIC;
  signal \MUX[1]_i_7_n_0\ : STD_LOGIC;
  signal \MUX[2]_i_4_n_0\ : STD_LOGIC;
  signal \MUX[2]_i_5_n_0\ : STD_LOGIC;
  signal \MUX[2]_i_6_n_0\ : STD_LOGIC;
  signal \MUX[2]_i_7_n_0\ : STD_LOGIC;
  signal \MUX_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \MUX_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \MUX_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \MUX_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \MUX_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \MUX_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \array_reg[0]_3\ : STD_LOGIC;
  signal \array_reg[10]_10\ : STD_LOGIC;
  signal \array_reg[11]_15\ : STD_LOGIC;
  signal \array_reg[12]_5\ : STD_LOGIC;
  signal \array_reg[13]_8\ : STD_LOGIC;
  signal \array_reg[14]_9\ : STD_LOGIC;
  signal \array_reg[15][15]_i_2_n_0\ : STD_LOGIC;
  signal \array_reg[15]_16\ : STD_LOGIC;
  signal \array_reg[1]_6\ : STD_LOGIC;
  signal \array_reg[2]_11\ : STD_LOGIC;
  signal \array_reg[3]_14\ : STD_LOGIC;
  signal \array_reg[4]_1\ : STD_LOGIC;
  signal \array_reg[5]_2\ : STD_LOGIC;
  signal \array_reg[6]_12\ : STD_LOGIC;
  signal \array_reg[7]_13\ : STD_LOGIC;
  signal \array_reg[8]_4\ : STD_LOGIC;
  signal \array_reg[9]_7\ : STD_LOGIC;
  signal \array_reg_reg[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[10]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[11]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[12]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[13]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[14]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[4]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[5]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[6]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[7]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[8]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \array_reg_reg[9]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \edges[0]_i_4_n_0\ : STD_LOGIC;
  signal \edges[0]_i_5_n_0\ : STD_LOGIC;
  signal \edges[0]_i_6_n_0\ : STD_LOGIC;
  signal \edges[0]_i_7_n_0\ : STD_LOGIC;
  signal \edges[1]_i_4_n_0\ : STD_LOGIC;
  signal \edges[1]_i_5_n_0\ : STD_LOGIC;
  signal \edges[1]_i_6_n_0\ : STD_LOGIC;
  signal \edges[1]_i_7_n_0\ : STD_LOGIC;
  signal \edges[2]_i_4_n_0\ : STD_LOGIC;
  signal \edges[2]_i_5_n_0\ : STD_LOGIC;
  signal \edges[2]_i_6_n_0\ : STD_LOGIC;
  signal \edges[2]_i_7_n_0\ : STD_LOGIC;
  signal \edges[3]_i_4_n_0\ : STD_LOGIC;
  signal \edges[3]_i_5_n_0\ : STD_LOGIC;
  signal \edges[3]_i_6_n_0\ : STD_LOGIC;
  signal \edges[3]_i_7_n_0\ : STD_LOGIC;
  signal \edges_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \edges_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \edges_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \edges_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \edges_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \edges_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \edges_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \edges_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal empty_reg_i_1_n_0 : STD_LOGIC;
  signal \empty_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \empty_reg_i_3__0_n_0\ : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal full_reg_i_1_n_0 : STD_LOGIC;
  signal full_reg_i_2_n_0 : STD_LOGIC;
  signal full_reg_i_3_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \r_ptr_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_ptr_reg_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \w_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \w_ptr_reg_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_ptr_reg[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_ptr_reg[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_ptr_reg[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_ptr_reg[3]_i_2__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w_ptr_reg[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_ptr_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \w_ptr_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w_ptr_reg[3]_i_2\ : label is "soft_lutpair0";
begin
  full <= \^full\;
\DOut[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(0),
      I1 => \array_reg_reg[2]\(0),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(0),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(0),
      O => \DOut[0]_i_4_n_0\
    );
\DOut[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(0),
      I1 => \array_reg_reg[6]\(0),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(0),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(0),
      O => \DOut[0]_i_5_n_0\
    );
\DOut[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(0),
      I1 => \array_reg_reg[10]\(0),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(0),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(0),
      O => \DOut[0]_i_6_n_0\
    );
\DOut[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(0),
      I1 => \array_reg_reg[14]\(0),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(0),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(0),
      O => \DOut[0]_i_7_n_0\
    );
\DOut[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(1),
      I1 => \array_reg_reg[2]\(1),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(1),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(1),
      O => \DOut[1]_i_4_n_0\
    );
\DOut[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(1),
      I1 => \array_reg_reg[6]\(1),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(1),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(1),
      O => \DOut[1]_i_5_n_0\
    );
\DOut[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(1),
      I1 => \array_reg_reg[10]\(1),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(1),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(1),
      O => \DOut[1]_i_6_n_0\
    );
\DOut[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(1),
      I1 => \array_reg_reg[14]\(1),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(1),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(1),
      O => \DOut[1]_i_7_n_0\
    );
\DOut[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(2),
      I1 => \array_reg_reg[2]\(2),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(2),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(2),
      O => \DOut[2]_i_4_n_0\
    );
\DOut[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(2),
      I1 => \array_reg_reg[6]\(2),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(2),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(2),
      O => \DOut[2]_i_5_n_0\
    );
\DOut[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(2),
      I1 => \array_reg_reg[10]\(2),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(2),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(2),
      O => \DOut[2]_i_6_n_0\
    );
\DOut[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(2),
      I1 => \array_reg_reg[14]\(2),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(2),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(2),
      O => \DOut[2]_i_7_n_0\
    );
\DOut[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(3),
      I1 => \array_reg_reg[2]\(3),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(3),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(3),
      O => \DOut[3]_i_4_n_0\
    );
\DOut[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(3),
      I1 => \array_reg_reg[6]\(3),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(3),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(3),
      O => \DOut[3]_i_5_n_0\
    );
\DOut[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(3),
      I1 => \array_reg_reg[10]\(3),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(3),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(3),
      O => \DOut[3]_i_6_n_0\
    );
\DOut[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(3),
      I1 => \array_reg_reg[14]\(3),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(3),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(3),
      O => \DOut[3]_i_7_n_0\
    );
\DOut[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(4),
      I1 => \array_reg_reg[2]\(4),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(4),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(4),
      O => \DOut[4]_i_4_n_0\
    );
\DOut[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(4),
      I1 => \array_reg_reg[6]\(4),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(4),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(4),
      O => \DOut[4]_i_5_n_0\
    );
\DOut[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(4),
      I1 => \array_reg_reg[10]\(4),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(4),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(4),
      O => \DOut[4]_i_6_n_0\
    );
\DOut[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(4),
      I1 => \array_reg_reg[14]\(4),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(4),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(4),
      O => \DOut[4]_i_7_n_0\
    );
\DOut[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(5),
      I1 => \array_reg_reg[2]\(5),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(5),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(5),
      O => \DOut[5]_i_4_n_0\
    );
\DOut[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(5),
      I1 => \array_reg_reg[6]\(5),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(5),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(5),
      O => \DOut[5]_i_5_n_0\
    );
\DOut[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(5),
      I1 => \array_reg_reg[10]\(5),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(5),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(5),
      O => \DOut[5]_i_6_n_0\
    );
\DOut[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(5),
      I1 => \array_reg_reg[14]\(5),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(5),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(5),
      O => \DOut[5]_i_7_n_0\
    );
\DOut[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(6),
      I1 => \array_reg_reg[2]\(6),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(6),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(6),
      O => \DOut[6]_i_4_n_0\
    );
\DOut[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(6),
      I1 => \array_reg_reg[6]\(6),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(6),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(6),
      O => \DOut[6]_i_5_n_0\
    );
\DOut[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(6),
      I1 => \array_reg_reg[10]\(6),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(6),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(6),
      O => \DOut[6]_i_6_n_0\
    );
\DOut[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(6),
      I1 => \array_reg_reg[14]\(6),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(6),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(6),
      O => \DOut[6]_i_7_n_0\
    );
\DOut[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => fifo_empty,
      O => E(0)
    );
\DOut[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(7),
      I1 => \array_reg_reg[2]\(7),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(7),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(7),
      O => \DOut[7]_i_6_n_0\
    );
\DOut[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(7),
      I1 => \array_reg_reg[6]\(7),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(7),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(7),
      O => \DOut[7]_i_7_n_0\
    );
\DOut[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(7),
      I1 => \array_reg_reg[10]\(7),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(7),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(7),
      O => \DOut[7]_i_8_n_0\
    );
\DOut[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(7),
      I1 => \array_reg_reg[14]\(7),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(7),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(7),
      O => \DOut[7]_i_9_n_0\
    );
\DOut_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[0]_i_2_n_0\,
      I1 => \DOut_reg[0]_i_3_n_0\,
      O => \DOut_reg[7]\(0),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[0]_i_4_n_0\,
      I1 => \DOut[0]_i_5_n_0\,
      O => \DOut_reg[0]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[0]_i_6_n_0\,
      I1 => \DOut[0]_i_7_n_0\,
      O => \DOut_reg[0]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[1]_i_2_n_0\,
      I1 => \DOut_reg[1]_i_3_n_0\,
      O => \DOut_reg[7]\(1),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[1]_i_4_n_0\,
      I1 => \DOut[1]_i_5_n_0\,
      O => \DOut_reg[1]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[1]_i_6_n_0\,
      I1 => \DOut[1]_i_7_n_0\,
      O => \DOut_reg[1]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[2]_i_2_n_0\,
      I1 => \DOut_reg[2]_i_3_n_0\,
      O => \DOut_reg[7]\(2),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[2]_i_4_n_0\,
      I1 => \DOut[2]_i_5_n_0\,
      O => \DOut_reg[2]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[2]_i_6_n_0\,
      I1 => \DOut[2]_i_7_n_0\,
      O => \DOut_reg[2]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[3]_i_2_n_0\,
      I1 => \DOut_reg[3]_i_3_n_0\,
      O => \DOut_reg[7]\(3),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[3]_i_4_n_0\,
      I1 => \DOut[3]_i_5_n_0\,
      O => \DOut_reg[3]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[3]_i_6_n_0\,
      I1 => \DOut[3]_i_7_n_0\,
      O => \DOut_reg[3]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[4]_i_2_n_0\,
      I1 => \DOut_reg[4]_i_3_n_0\,
      O => \DOut_reg[7]\(4),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[4]_i_4_n_0\,
      I1 => \DOut[4]_i_5_n_0\,
      O => \DOut_reg[4]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[4]_i_6_n_0\,
      I1 => \DOut[4]_i_7_n_0\,
      O => \DOut_reg[4]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[5]_i_2_n_0\,
      I1 => \DOut_reg[5]_i_3_n_0\,
      O => \DOut_reg[7]\(5),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[5]_i_4_n_0\,
      I1 => \DOut[5]_i_5_n_0\,
      O => \DOut_reg[5]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[5]_i_6_n_0\,
      I1 => \DOut[5]_i_7_n_0\,
      O => \DOut_reg[5]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[6]_i_2_n_0\,
      I1 => \DOut_reg[6]_i_3_n_0\,
      O => \DOut_reg[7]\(6),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[6]_i_4_n_0\,
      I1 => \DOut[6]_i_5_n_0\,
      O => \DOut_reg[6]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[6]_i_6_n_0\,
      I1 => \DOut[6]_i_7_n_0\,
      O => \DOut_reg[6]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \DOut_reg[7]_i_4_n_0\,
      I1 => \DOut_reg[7]_i_5_n_0\,
      O => \DOut_reg[7]\(7),
      S => \r_ptr_reg_reg__0\(3)
    );
\DOut_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[7]_i_6_n_0\,
      I1 => \DOut[7]_i_7_n_0\,
      O => \DOut_reg[7]_i_4_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\DOut_reg[7]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \DOut[7]_i_8_n_0\,
      I1 => \DOut[7]_i_9_n_0\,
      O => \DOut_reg[7]_i_5_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\FSM_sequential_fifoState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002E222EE2"
    )
        port map (
      I0 => in0(0),
      I1 => \FSM_sequential_fifoState_reg[1]_0\,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => fifo_empty,
      I5 => fifo_reset,
      O => \FSM_sequential_fifoState_reg[1]\
    );
\MUX[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(8),
      I1 => \array_reg_reg[2]\(8),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(8),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(8),
      O => \MUX[0]_i_4_n_0\
    );
\MUX[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(8),
      I1 => \array_reg_reg[6]\(8),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(8),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(8),
      O => \MUX[0]_i_5_n_0\
    );
\MUX[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(8),
      I1 => \array_reg_reg[10]\(8),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(8),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(8),
      O => \MUX[0]_i_6_n_0\
    );
\MUX[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(8),
      I1 => \array_reg_reg[14]\(8),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(8),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(8),
      O => \MUX[0]_i_7_n_0\
    );
\MUX[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(9),
      I1 => \array_reg_reg[2]\(9),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(9),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(9),
      O => \MUX[1]_i_4_n_0\
    );
\MUX[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(9),
      I1 => \array_reg_reg[6]\(9),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(9),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(9),
      O => \MUX[1]_i_5_n_0\
    );
\MUX[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(9),
      I1 => \array_reg_reg[10]\(9),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(9),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(9),
      O => \MUX[1]_i_6_n_0\
    );
\MUX[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(9),
      I1 => \array_reg_reg[14]\(9),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(9),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(9),
      O => \MUX[1]_i_7_n_0\
    );
\MUX[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(10),
      I1 => \array_reg_reg[2]\(10),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(10),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(10),
      O => \MUX[2]_i_4_n_0\
    );
\MUX[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(10),
      I1 => \array_reg_reg[6]\(10),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(10),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(10),
      O => \MUX[2]_i_5_n_0\
    );
\MUX[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(10),
      I1 => \array_reg_reg[10]\(10),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(10),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(10),
      O => \MUX[2]_i_6_n_0\
    );
\MUX[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(10),
      I1 => \array_reg_reg[14]\(10),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(10),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(10),
      O => \MUX[2]_i_7_n_0\
    );
\MUX_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \MUX_reg[0]_i_2_n_0\,
      I1 => \MUX_reg[0]_i_3_n_0\,
      O => \MUX_reg[2]\(0),
      S => \r_ptr_reg_reg__0\(3)
    );
\MUX_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \MUX[0]_i_4_n_0\,
      I1 => \MUX[0]_i_5_n_0\,
      O => \MUX_reg[0]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\MUX_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \MUX[0]_i_6_n_0\,
      I1 => \MUX[0]_i_7_n_0\,
      O => \MUX_reg[0]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\MUX_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \MUX_reg[1]_i_2_n_0\,
      I1 => \MUX_reg[1]_i_3_n_0\,
      O => \MUX_reg[2]\(1),
      S => \r_ptr_reg_reg__0\(3)
    );
\MUX_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \MUX[1]_i_4_n_0\,
      I1 => \MUX[1]_i_5_n_0\,
      O => \MUX_reg[1]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\MUX_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \MUX[1]_i_6_n_0\,
      I1 => \MUX[1]_i_7_n_0\,
      O => \MUX_reg[1]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\MUX_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \MUX_reg[2]_i_2_n_0\,
      I1 => \MUX_reg[2]_i_3_n_0\,
      O => \MUX_reg[2]\(2),
      S => \r_ptr_reg_reg__0\(3)
    );
\MUX_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \MUX[2]_i_4_n_0\,
      I1 => \MUX[2]_i_5_n_0\,
      O => \MUX_reg[2]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\MUX_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \MUX[2]_i_6_n_0\,
      I1 => \MUX[2]_i_7_n_0\,
      O => \MUX_reg[2]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\array_reg[0][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \array_reg[15][15]_i_2_n_0\,
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[0]_3\
    );
\array_reg[10][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[10]_10\
    );
\array_reg[11][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[11]_15\
    );
\array_reg[12][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \array_reg[15][15]_i_2_n_0\,
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[12]_5\
    );
\array_reg[13][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \array_reg[15][15]_i_2_n_0\,
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[13]_8\
    );
\array_reg[14][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[14]_9\
    );
\array_reg[15][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(3),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(1),
      I4 => \array_reg[15][15]_i_2_n_0\,
      O => \array_reg[15]_16\
    );
\array_reg[15][15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => blClkIn(0),
      I1 => blClkIn(1),
      I2 => \^full\,
      O => \array_reg[15][15]_i_2_n_0\
    );
\array_reg[1][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \array_reg[15][15]_i_2_n_0\,
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[1]_6\
    );
\array_reg[2][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[2]_11\
    );
\array_reg[3][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[3]_14\
    );
\array_reg[4][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \array_reg[15][15]_i_2_n_0\,
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(3),
      I3 => \w_ptr_reg_reg__0\(1),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[4]_1\
    );
\array_reg[5][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \array_reg[15][15]_i_2_n_0\,
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(0),
      O => \array_reg[5]_2\
    );
\array_reg[6][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(0),
      O => \array_reg[6]_12\
    );
\array_reg[7][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \array_reg[15][15]_i_2_n_0\,
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(0),
      I4 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[7]_13\
    );
\array_reg[8][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \array_reg[15][15]_i_2_n_0\,
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[8]_4\
    );
\array_reg[9][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \array_reg[15][15]_i_2_n_0\,
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => \w_ptr_reg_reg__0\(2),
      O => \array_reg[9]_7\
    );
\array_reg_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[0]\(0)
    );
\array_reg_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[0]\(10)
    );
\array_reg_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[0]\(12)
    );
\array_reg_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[0]\(13)
    );
\array_reg_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[0]\(14)
    );
\array_reg_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[0]\(15)
    );
\array_reg_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[0]\(1)
    );
\array_reg_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[0]\(2)
    );
\array_reg_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[0]\(3)
    );
\array_reg_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[0]\(4)
    );
\array_reg_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[0]\(5)
    );
\array_reg_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[0]\(6)
    );
\array_reg_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[0]\(7)
    );
\array_reg_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[0]\(8)
    );
\array_reg_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_3\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[0]\(9)
    );
\array_reg_reg[10][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[10]\(0)
    );
\array_reg_reg[10][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[10]\(10)
    );
\array_reg_reg[10][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[10]\(12)
    );
\array_reg_reg[10][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[10]\(13)
    );
\array_reg_reg[10][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[10]\(14)
    );
\array_reg_reg[10][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[10]\(15)
    );
\array_reg_reg[10][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[10]\(1)
    );
\array_reg_reg[10][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[10]\(2)
    );
\array_reg_reg[10][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[10]\(3)
    );
\array_reg_reg[10][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[10]\(4)
    );
\array_reg_reg[10][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[10]\(5)
    );
\array_reg_reg[10][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[10]\(6)
    );
\array_reg_reg[10][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[10]\(7)
    );
\array_reg_reg[10][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[10]\(8)
    );
\array_reg_reg[10][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_10\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[10]\(9)
    );
\array_reg_reg[11][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[11]\(0)
    );
\array_reg_reg[11][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[11]\(10)
    );
\array_reg_reg[11][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[11]\(12)
    );
\array_reg_reg[11][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[11]\(13)
    );
\array_reg_reg[11][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[11]\(14)
    );
\array_reg_reg[11][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[11]\(15)
    );
\array_reg_reg[11][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[11]\(1)
    );
\array_reg_reg[11][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[11]\(2)
    );
\array_reg_reg[11][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[11]\(3)
    );
\array_reg_reg[11][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[11]\(4)
    );
\array_reg_reg[11][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[11]\(5)
    );
\array_reg_reg[11][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[11]\(6)
    );
\array_reg_reg[11][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[11]\(7)
    );
\array_reg_reg[11][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[11]\(8)
    );
\array_reg_reg[11][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_15\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[11]\(9)
    );
\array_reg_reg[12][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[12]\(0)
    );
\array_reg_reg[12][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[12]\(10)
    );
\array_reg_reg[12][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[12]\(12)
    );
\array_reg_reg[12][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[12]\(13)
    );
\array_reg_reg[12][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[12]\(14)
    );
\array_reg_reg[12][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[12]\(15)
    );
\array_reg_reg[12][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[12]\(1)
    );
\array_reg_reg[12][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[12]\(2)
    );
\array_reg_reg[12][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[12]\(3)
    );
\array_reg_reg[12][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[12]\(4)
    );
\array_reg_reg[12][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[12]\(5)
    );
\array_reg_reg[12][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[12]\(6)
    );
\array_reg_reg[12][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[12]\(7)
    );
\array_reg_reg[12][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[12]\(8)
    );
\array_reg_reg[12][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_5\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[12]\(9)
    );
\array_reg_reg[13][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[13]\(0)
    );
\array_reg_reg[13][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[13]\(10)
    );
\array_reg_reg[13][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[13]\(12)
    );
\array_reg_reg[13][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[13]\(13)
    );
\array_reg_reg[13][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[13]\(14)
    );
\array_reg_reg[13][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[13]\(15)
    );
\array_reg_reg[13][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[13]\(1)
    );
\array_reg_reg[13][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[13]\(2)
    );
\array_reg_reg[13][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[13]\(3)
    );
\array_reg_reg[13][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[13]\(4)
    );
\array_reg_reg[13][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[13]\(5)
    );
\array_reg_reg[13][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[13]\(6)
    );
\array_reg_reg[13][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[13]\(7)
    );
\array_reg_reg[13][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[13]\(8)
    );
\array_reg_reg[13][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_8\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[13]\(9)
    );
\array_reg_reg[14][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[14]\(0)
    );
\array_reg_reg[14][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[14]\(10)
    );
\array_reg_reg[14][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[14]\(12)
    );
\array_reg_reg[14][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[14]\(13)
    );
\array_reg_reg[14][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[14]\(14)
    );
\array_reg_reg[14][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[14]\(15)
    );
\array_reg_reg[14][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[14]\(1)
    );
\array_reg_reg[14][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[14]\(2)
    );
\array_reg_reg[14][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[14]\(3)
    );
\array_reg_reg[14][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[14]\(4)
    );
\array_reg_reg[14][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[14]\(5)
    );
\array_reg_reg[14][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[14]\(6)
    );
\array_reg_reg[14][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[14]\(7)
    );
\array_reg_reg[14][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[14]\(8)
    );
\array_reg_reg[14][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_9\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[14]\(9)
    );
\array_reg_reg[15][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[15]\(0)
    );
\array_reg_reg[15][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[15]\(10)
    );
\array_reg_reg[15][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[15]\(12)
    );
\array_reg_reg[15][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[15]\(13)
    );
\array_reg_reg[15][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[15]\(14)
    );
\array_reg_reg[15][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[15]\(15)
    );
\array_reg_reg[15][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[15]\(1)
    );
\array_reg_reg[15][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[15]\(2)
    );
\array_reg_reg[15][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[15]\(3)
    );
\array_reg_reg[15][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[15]\(4)
    );
\array_reg_reg[15][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[15]\(5)
    );
\array_reg_reg[15][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[15]\(6)
    );
\array_reg_reg[15][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[15]\(7)
    );
\array_reg_reg[15][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[15]\(8)
    );
\array_reg_reg[15][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15]_16\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[15]\(9)
    );
\array_reg_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[1]\(0)
    );
\array_reg_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[1]\(10)
    );
\array_reg_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[1]\(12)
    );
\array_reg_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[1]\(13)
    );
\array_reg_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[1]\(14)
    );
\array_reg_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[1]\(15)
    );
\array_reg_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[1]\(1)
    );
\array_reg_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[1]\(2)
    );
\array_reg_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[1]\(3)
    );
\array_reg_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[1]\(4)
    );
\array_reg_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[1]\(5)
    );
\array_reg_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[1]\(6)
    );
\array_reg_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[1]\(7)
    );
\array_reg_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[1]\(8)
    );
\array_reg_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_6\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[1]\(9)
    );
\array_reg_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[2]\(0)
    );
\array_reg_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[2]\(10)
    );
\array_reg_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[2]\(12)
    );
\array_reg_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[2]\(13)
    );
\array_reg_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[2]\(14)
    );
\array_reg_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[2]\(15)
    );
\array_reg_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[2]\(1)
    );
\array_reg_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[2]\(2)
    );
\array_reg_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[2]\(3)
    );
\array_reg_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[2]\(4)
    );
\array_reg_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[2]\(5)
    );
\array_reg_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[2]\(6)
    );
\array_reg_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[2]\(7)
    );
\array_reg_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[2]\(8)
    );
\array_reg_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_11\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[2]\(9)
    );
\array_reg_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[3]\(0)
    );
\array_reg_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[3]\(10)
    );
\array_reg_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[3]\(12)
    );
\array_reg_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[3]\(13)
    );
\array_reg_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[3]\(14)
    );
\array_reg_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[3]\(15)
    );
\array_reg_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[3]\(1)
    );
\array_reg_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[3]\(2)
    );
\array_reg_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[3]\(3)
    );
\array_reg_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[3]\(4)
    );
\array_reg_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[3]\(5)
    );
\array_reg_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[3]\(6)
    );
\array_reg_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[3]\(7)
    );
\array_reg_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[3]\(8)
    );
\array_reg_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_14\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[3]\(9)
    );
\array_reg_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[4]\(0)
    );
\array_reg_reg[4][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[4]\(10)
    );
\array_reg_reg[4][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[4]\(12)
    );
\array_reg_reg[4][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[4]\(13)
    );
\array_reg_reg[4][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[4]\(14)
    );
\array_reg_reg[4][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[4]\(15)
    );
\array_reg_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[4]\(1)
    );
\array_reg_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[4]\(2)
    );
\array_reg_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[4]\(3)
    );
\array_reg_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[4]\(4)
    );
\array_reg_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[4]\(5)
    );
\array_reg_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[4]\(6)
    );
\array_reg_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[4]\(7)
    );
\array_reg_reg[4][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[4]\(8)
    );
\array_reg_reg[4][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_1\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[4]\(9)
    );
\array_reg_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[5]\(0)
    );
\array_reg_reg[5][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[5]\(10)
    );
\array_reg_reg[5][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[5]\(12)
    );
\array_reg_reg[5][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[5]\(13)
    );
\array_reg_reg[5][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[5]\(14)
    );
\array_reg_reg[5][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[5]\(15)
    );
\array_reg_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[5]\(1)
    );
\array_reg_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[5]\(2)
    );
\array_reg_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[5]\(3)
    );
\array_reg_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[5]\(4)
    );
\array_reg_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[5]\(5)
    );
\array_reg_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[5]\(6)
    );
\array_reg_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[5]\(7)
    );
\array_reg_reg[5][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[5]\(8)
    );
\array_reg_reg[5][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_2\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[5]\(9)
    );
\array_reg_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[6]\(0)
    );
\array_reg_reg[6][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[6]\(10)
    );
\array_reg_reg[6][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[6]\(12)
    );
\array_reg_reg[6][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[6]\(13)
    );
\array_reg_reg[6][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[6]\(14)
    );
\array_reg_reg[6][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[6]\(15)
    );
\array_reg_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[6]\(1)
    );
\array_reg_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[6]\(2)
    );
\array_reg_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[6]\(3)
    );
\array_reg_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[6]\(4)
    );
\array_reg_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[6]\(5)
    );
\array_reg_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[6]\(6)
    );
\array_reg_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[6]\(7)
    );
\array_reg_reg[6][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[6]\(8)
    );
\array_reg_reg[6][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_12\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[6]\(9)
    );
\array_reg_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[7]\(0)
    );
\array_reg_reg[7][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[7]\(10)
    );
\array_reg_reg[7][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[7]\(12)
    );
\array_reg_reg[7][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[7]\(13)
    );
\array_reg_reg[7][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[7]\(14)
    );
\array_reg_reg[7][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[7]\(15)
    );
\array_reg_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[7]\(1)
    );
\array_reg_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[7]\(2)
    );
\array_reg_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[7]\(3)
    );
\array_reg_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[7]\(4)
    );
\array_reg_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[7]\(5)
    );
\array_reg_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[7]\(6)
    );
\array_reg_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[7]\(7)
    );
\array_reg_reg[7][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[7]\(8)
    );
\array_reg_reg[7][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_13\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[7]\(9)
    );
\array_reg_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[8]\(0)
    );
\array_reg_reg[8][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[8]\(10)
    );
\array_reg_reg[8][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[8]\(12)
    );
\array_reg_reg[8][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[8]\(13)
    );
\array_reg_reg[8][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[8]\(14)
    );
\array_reg_reg[8][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[8]\(15)
    );
\array_reg_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[8]\(1)
    );
\array_reg_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[8]\(2)
    );
\array_reg_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[8]\(3)
    );
\array_reg_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[8]\(4)
    );
\array_reg_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[8]\(5)
    );
\array_reg_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[8]\(6)
    );
\array_reg_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[8]\(7)
    );
\array_reg_reg[8][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[8]\(8)
    );
\array_reg_reg[8][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_4\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[8]\(9)
    );
\array_reg_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(0),
      Q => \array_reg_reg[9]\(0)
    );
\array_reg_reg[9][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(10),
      Q => \array_reg_reg[9]\(10)
    );
\array_reg_reg[9][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(11),
      Q => \array_reg_reg[9]\(12)
    );
\array_reg_reg[9][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(12),
      Q => \array_reg_reg[9]\(13)
    );
\array_reg_reg[9][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(13),
      Q => \array_reg_reg[9]\(14)
    );
\array_reg_reg[9][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(14),
      Q => \array_reg_reg[9]\(15)
    );
\array_reg_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(1),
      Q => \array_reg_reg[9]\(1)
    );
\array_reg_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(2),
      Q => \array_reg_reg[9]\(2)
    );
\array_reg_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(3),
      Q => \array_reg_reg[9]\(3)
    );
\array_reg_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(4),
      Q => \array_reg_reg[9]\(4)
    );
\array_reg_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(5),
      Q => \array_reg_reg[9]\(5)
    );
\array_reg_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(6),
      Q => \array_reg_reg[9]\(6)
    );
\array_reg_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(7),
      Q => \array_reg_reg[9]\(7)
    );
\array_reg_reg[9][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(8),
      Q => \array_reg_reg[9]\(8)
    );
\array_reg_reg[9][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_7\,
      CLR => fifo_reset,
      D => GPIOPortWr(9),
      Q => \array_reg_reg[9]\(9)
    );
\edges[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(12),
      I1 => \array_reg_reg[2]\(12),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(12),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(12),
      O => \edges[0]_i_4_n_0\
    );
\edges[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(12),
      I1 => \array_reg_reg[6]\(12),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(12),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(12),
      O => \edges[0]_i_5_n_0\
    );
\edges[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(12),
      I1 => \array_reg_reg[10]\(12),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(12),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(12),
      O => \edges[0]_i_6_n_0\
    );
\edges[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(12),
      I1 => \array_reg_reg[14]\(12),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(12),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(12),
      O => \edges[0]_i_7_n_0\
    );
\edges[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(13),
      I1 => \array_reg_reg[2]\(13),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(13),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(13),
      O => \edges[1]_i_4_n_0\
    );
\edges[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(13),
      I1 => \array_reg_reg[6]\(13),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(13),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(13),
      O => \edges[1]_i_5_n_0\
    );
\edges[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(13),
      I1 => \array_reg_reg[10]\(13),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(13),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(13),
      O => \edges[1]_i_6_n_0\
    );
\edges[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(13),
      I1 => \array_reg_reg[14]\(13),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(13),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(13),
      O => \edges[1]_i_7_n_0\
    );
\edges[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(14),
      I1 => \array_reg_reg[2]\(14),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(14),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(14),
      O => \edges[2]_i_4_n_0\
    );
\edges[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(14),
      I1 => \array_reg_reg[6]\(14),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(14),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(14),
      O => \edges[2]_i_5_n_0\
    );
\edges[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(14),
      I1 => \array_reg_reg[10]\(14),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(14),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(14),
      O => \edges[2]_i_6_n_0\
    );
\edges[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(14),
      I1 => \array_reg_reg[14]\(14),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(14),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(14),
      O => \edges[2]_i_7_n_0\
    );
\edges[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[3]\(15),
      I1 => \array_reg_reg[2]\(15),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[1]\(15),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[0]\(15),
      O => \edges[3]_i_4_n_0\
    );
\edges[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[7]\(15),
      I1 => \array_reg_reg[6]\(15),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[5]\(15),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[4]\(15),
      O => \edges[3]_i_5_n_0\
    );
\edges[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[11]\(15),
      I1 => \array_reg_reg[10]\(15),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[9]\(15),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[8]\(15),
      O => \edges[3]_i_6_n_0\
    );
\edges[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg[15]\(15),
      I1 => \array_reg_reg[14]\(15),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg[13]\(15),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg[12]\(15),
      O => \edges[3]_i_7_n_0\
    );
\edges_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \edges_reg[0]_i_2_n_0\,
      I1 => \edges_reg[0]_i_3_n_0\,
      O => D(0),
      S => \r_ptr_reg_reg__0\(3)
    );
\edges_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[0]_i_4_n_0\,
      I1 => \edges[0]_i_5_n_0\,
      O => \edges_reg[0]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[0]_i_6_n_0\,
      I1 => \edges[0]_i_7_n_0\,
      O => \edges_reg[0]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \edges_reg[1]_i_2_n_0\,
      I1 => \edges_reg[1]_i_3_n_0\,
      O => D(1),
      S => \r_ptr_reg_reg__0\(3)
    );
\edges_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[1]_i_4_n_0\,
      I1 => \edges[1]_i_5_n_0\,
      O => \edges_reg[1]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[1]_i_6_n_0\,
      I1 => \edges[1]_i_7_n_0\,
      O => \edges_reg[1]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \edges_reg[2]_i_2_n_0\,
      I1 => \edges_reg[2]_i_3_n_0\,
      O => D(2),
      S => \r_ptr_reg_reg__0\(3)
    );
\edges_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[2]_i_4_n_0\,
      I1 => \edges[2]_i_5_n_0\,
      O => \edges_reg[2]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[2]_i_6_n_0\,
      I1 => \edges[2]_i_7_n_0\,
      O => \edges_reg[2]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \edges_reg[3]_i_2_n_0\,
      I1 => \edges_reg[3]_i_3_n_0\,
      O => D(3),
      S => \r_ptr_reg_reg__0\(3)
    );
\edges_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[3]_i_4_n_0\,
      I1 => \edges[3]_i_5_n_0\,
      O => \edges_reg[3]_i_2_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\edges_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \edges[3]_i_6_n_0\,
      I1 => \edges[3]_i_7_n_0\,
      O => \edges_reg[3]_i_3_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
empty_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBAAAAA0AA"
    )
        port map (
      I0 => fifo_empty,
      I1 => \empty_reg_i_2__0_n_0\,
      I2 => blClkIn(0),
      I3 => blClkIn(1),
      I4 => \^full\,
      I5 => rd,
      O => empty_reg_i_1_n_0
    );
\empty_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBBBBBBBEEEEEEE"
    )
        port map (
      I0 => \empty_reg_i_3__0_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \r_ptr_reg_reg__0\(0),
      I3 => \r_ptr_reg_reg__0\(1),
      I4 => \r_ptr_reg_reg__0\(2),
      I5 => \w_ptr_reg_reg__0\(3),
      O => \empty_reg_i_2__0_n_0\
    );
\empty_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF6F96FFFFF"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(2),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \r_ptr_reg_reg__0\(1),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \w_ptr_reg_reg__0\(0),
      O => \empty_reg_i_3__0_n_0\
    );
empty_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => empty_reg_i_1_n_0,
      PRE => fifo_reset,
      Q => fifo_empty
    );
fifo_rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCDF00000010"
    )
        port map (
      I0 => fifo_empty,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => fifo_reset,
      I5 => rd,
      O => fifo_rd_reg
    );
full_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF00AF00FF0CAF00"
    )
        port map (
      I0 => fifo_empty,
      I1 => full_reg_i_2_n_0,
      I2 => rd,
      I3 => \^full\,
      I4 => blClkIn(1),
      I5 => blClkIn(0),
      O => full_reg_i_1_n_0
    );
full_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006CCC9333"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(3),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(1),
      I4 => \r_ptr_reg_reg__0\(3),
      I5 => full_reg_i_3_n_0,
      O => full_reg_i_2_n_0
    );
full_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6FF6F96FFFFF"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \r_ptr_reg_reg__0\(2),
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(1),
      I4 => \w_ptr_reg_reg__0\(0),
      I5 => \r_ptr_reg_reg__0\(0),
      O => full_reg_i_3_n_0
    );
full_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_reset,
      D => full_reg_i_1_n_0,
      Q => \^full\
    );
\r_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(0),
      O => plusOp(0)
    );
\r_ptr_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(0),
      I1 => \r_ptr_reg_reg__0\(1),
      O => plusOp(1)
    );
\r_ptr_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(2),
      I1 => \r_ptr_reg_reg__0\(1),
      I2 => \r_ptr_reg_reg__0\(0),
      O => \r_ptr_reg[2]_i_1__0_n_0\
    );
\r_ptr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F0"
    )
        port map (
      I0 => blClkIn(1),
      I1 => blClkIn(0),
      I2 => rd,
      I3 => fifo_empty,
      O => \r_ptr_reg[3]_i_1_n_0\
    );
\r_ptr_reg[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(2),
      I1 => \r_ptr_reg_reg__0\(1),
      I2 => \r_ptr_reg_reg__0\(0),
      I3 => \r_ptr_reg_reg__0\(3),
      O => plusOp(3)
    );
\r_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp(0),
      Q => \r_ptr_reg_reg__0\(0)
    );
\r_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp(1),
      Q => \r_ptr_reg_reg__0\(1)
    );
\r_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => \r_ptr_reg[2]_i_1__0_n_0\,
      Q => \r_ptr_reg_reg__0\(2)
    );
\r_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp(3),
      Q => \r_ptr_reg_reg__0\(3)
    );
\w_ptr_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      O => plusOp0_in(0)
    );
\w_ptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      O => plusOp0_in(1)
    );
\w_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(0),
      O => plusOp0_in(2)
    );
\w_ptr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C04"
    )
        port map (
      I0 => \^full\,
      I1 => blClkIn(1),
      I2 => blClkIn(0),
      I3 => rd,
      O => \w_ptr_reg[3]_i_1_n_0\
    );
\w_ptr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(3),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(1),
      O => plusOp0_in(3)
    );
\w_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp0_in(0),
      Q => \w_ptr_reg_reg__0\(0)
    );
\w_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp0_in(1),
      Q => \w_ptr_reg_reg__0\(1)
    );
\w_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp0_in(2),
      Q => \w_ptr_reg_reg__0\(2)
    );
\w_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1_n_0\,
      CLR => fifo_reset,
      D => plusOp0_in(3),
      Q => \w_ptr_reg_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_fifo_2 is
  port (
    fifo_reset : out STD_LOGIC;
    GPIOPortRd : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clk : in STD_LOGIC;
    wr : in STD_LOGIC;
    GPIOPortWr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    blClkOut : in STD_LOGIC_VECTOR ( 1 downto 0 );
    full : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_fifo_2 : entity is "fifo";
end GPIOTest_GPIOInterface_0_0_fifo_2;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_fifo_2 is
  signal \GPIOPortRd[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[15]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \GPIOPortRd[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \array_reg[0]_29\ : STD_LOGIC;
  signal \array_reg[10]_23\ : STD_LOGIC;
  signal \array_reg[11]_17\ : STD_LOGIC;
  signal \array_reg[12]_22\ : STD_LOGIC;
  signal \array_reg[13]_21\ : STD_LOGIC;
  signal \array_reg[14]_20\ : STD_LOGIC;
  signal \array_reg[15][15]_i_1__0_n_0\ : STD_LOGIC;
  signal \array_reg[1]_30\ : STD_LOGIC;
  signal \array_reg[2]_31\ : STD_LOGIC;
  signal \array_reg[3]_18\ : STD_LOGIC;
  signal \array_reg[4]_28\ : STD_LOGIC;
  signal \array_reg[5]_27\ : STD_LOGIC;
  signal \array_reg[6]_26\ : STD_LOGIC;
  signal \array_reg[7]_19\ : STD_LOGIC;
  signal \array_reg[8]_25\ : STD_LOGIC;
  signal \array_reg[9]_24\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[0][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[10][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[11][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[12][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[13][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[14][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[15][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[1][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[2][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[3][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[4][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[5][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[6][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[7][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[8][9]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][10]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][11]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][12]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][13]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][14]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][15]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][7]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][8]\ : STD_LOGIC;
  signal \array_reg_reg_n_0_[9][9]\ : STD_LOGIC;
  signal empty_reg : STD_LOGIC;
  signal \empty_reg_i_1__0_n_0\ : STD_LOGIC;
  signal empty_reg_i_2_n_0 : STD_LOGIC;
  signal empty_reg_i_3_n_0 : STD_LOGIC;
  signal \^fifo_reset\ : STD_LOGIC;
  signal \full_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \full_reg_i_2__0_n_0\ : STD_LOGIC;
  signal \full_reg_i_3__0_n_0\ : STD_LOGIC;
  signal out_fifo_full : STD_LOGIC;
  signal \r_ptr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_ptr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_ptr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_ptr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_ptr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_ptr_reg_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \w_ptr_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \w_ptr_reg_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_ptr_reg[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_ptr_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_ptr_reg[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_ptr_reg[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w_ptr_reg[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_ptr_reg[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_ptr_reg[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_ptr_reg[3]_i_2__0\ : label is "soft_lutpair4";
begin
  fifo_reset <= \^fifo_reset\;
\DOut[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => GPIOPortWr(1),
      I1 => reset_n,
      O => \^fifo_reset\
    );
\GPIOPortRd[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[0]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[0]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[0]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(0)
    );
\GPIOPortRd[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[0]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[0]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[0]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][0]\,
      I1 => \array_reg_reg_n_0_[10][0]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][0]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][0]\,
      O => \GPIOPortRd[0]_INST_0_i_2_n_0\
    );
\GPIOPortRd[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][0]\,
      I1 => \array_reg_reg_n_0_[14][0]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][0]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][0]\,
      O => \GPIOPortRd[0]_INST_0_i_3_n_0\
    );
\GPIOPortRd[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][0]\,
      I1 => \array_reg_reg_n_0_[2][0]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][0]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][0]\,
      O => \GPIOPortRd[0]_INST_0_i_4_n_0\
    );
\GPIOPortRd[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][0]\,
      I1 => \array_reg_reg_n_0_[6][0]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][0]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][0]\,
      O => \GPIOPortRd[0]_INST_0_i_5_n_0\
    );
\GPIOPortRd[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[10]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[10]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[10]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(10)
    );
\GPIOPortRd[10]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[10]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[10]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[10]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][10]\,
      I1 => \array_reg_reg_n_0_[10][10]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][10]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][10]\,
      O => \GPIOPortRd[10]_INST_0_i_2_n_0\
    );
\GPIOPortRd[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][10]\,
      I1 => \array_reg_reg_n_0_[14][10]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][10]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][10]\,
      O => \GPIOPortRd[10]_INST_0_i_3_n_0\
    );
\GPIOPortRd[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][10]\,
      I1 => \array_reg_reg_n_0_[2][10]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][10]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][10]\,
      O => \GPIOPortRd[10]_INST_0_i_4_n_0\
    );
\GPIOPortRd[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][10]\,
      I1 => \array_reg_reg_n_0_[6][10]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][10]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][10]\,
      O => \GPIOPortRd[10]_INST_0_i_5_n_0\
    );
\GPIOPortRd[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[11]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[11]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[11]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(11)
    );
\GPIOPortRd[11]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[11]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[11]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[11]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][11]\,
      I1 => \array_reg_reg_n_0_[10][11]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][11]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][11]\,
      O => \GPIOPortRd[11]_INST_0_i_2_n_0\
    );
\GPIOPortRd[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][11]\,
      I1 => \array_reg_reg_n_0_[14][11]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][11]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][11]\,
      O => \GPIOPortRd[11]_INST_0_i_3_n_0\
    );
\GPIOPortRd[11]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][11]\,
      I1 => \array_reg_reg_n_0_[2][11]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][11]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][11]\,
      O => \GPIOPortRd[11]_INST_0_i_4_n_0\
    );
\GPIOPortRd[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][11]\,
      I1 => \array_reg_reg_n_0_[6][11]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][11]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][11]\,
      O => \GPIOPortRd[11]_INST_0_i_5_n_0\
    );
\GPIOPortRd[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[12]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[12]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[12]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(12)
    );
\GPIOPortRd[12]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[12]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[12]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[12]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][12]\,
      I1 => \array_reg_reg_n_0_[10][12]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][12]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][12]\,
      O => \GPIOPortRd[12]_INST_0_i_2_n_0\
    );
\GPIOPortRd[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][12]\,
      I1 => \array_reg_reg_n_0_[14][12]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][12]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][12]\,
      O => \GPIOPortRd[12]_INST_0_i_3_n_0\
    );
\GPIOPortRd[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][12]\,
      I1 => \array_reg_reg_n_0_[2][12]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][12]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][12]\,
      O => \GPIOPortRd[12]_INST_0_i_4_n_0\
    );
\GPIOPortRd[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][12]\,
      I1 => \array_reg_reg_n_0_[6][12]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][12]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][12]\,
      O => \GPIOPortRd[12]_INST_0_i_5_n_0\
    );
\GPIOPortRd[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[13]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[13]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[13]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(13)
    );
\GPIOPortRd[13]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[13]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[13]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[13]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][13]\,
      I1 => \array_reg_reg_n_0_[10][13]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][13]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][13]\,
      O => \GPIOPortRd[13]_INST_0_i_2_n_0\
    );
\GPIOPortRd[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][13]\,
      I1 => \array_reg_reg_n_0_[14][13]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][13]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][13]\,
      O => \GPIOPortRd[13]_INST_0_i_3_n_0\
    );
\GPIOPortRd[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][13]\,
      I1 => \array_reg_reg_n_0_[2][13]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][13]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][13]\,
      O => \GPIOPortRd[13]_INST_0_i_4_n_0\
    );
\GPIOPortRd[13]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][13]\,
      I1 => \array_reg_reg_n_0_[6][13]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][13]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][13]\,
      O => \GPIOPortRd[13]_INST_0_i_5_n_0\
    );
\GPIOPortRd[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[14]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[14]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[14]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(14)
    );
\GPIOPortRd[14]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[14]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[14]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[14]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][14]\,
      I1 => \array_reg_reg_n_0_[10][14]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][14]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][14]\,
      O => \GPIOPortRd[14]_INST_0_i_2_n_0\
    );
\GPIOPortRd[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][14]\,
      I1 => \array_reg_reg_n_0_[14][14]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][14]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][14]\,
      O => \GPIOPortRd[14]_INST_0_i_3_n_0\
    );
\GPIOPortRd[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][14]\,
      I1 => \array_reg_reg_n_0_[2][14]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][14]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][14]\,
      O => \GPIOPortRd[14]_INST_0_i_4_n_0\
    );
\GPIOPortRd[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][14]\,
      I1 => \array_reg_reg_n_0_[6][14]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][14]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][14]\,
      O => \GPIOPortRd[14]_INST_0_i_5_n_0\
    );
\GPIOPortRd[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[15]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[15]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[15]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(15)
    );
\GPIOPortRd[15]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[15]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[15]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[15]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][15]\,
      I1 => \array_reg_reg_n_0_[10][15]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][15]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][15]\,
      O => \GPIOPortRd[15]_INST_0_i_2_n_0\
    );
\GPIOPortRd[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][15]\,
      I1 => \array_reg_reg_n_0_[14][15]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][15]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][15]\,
      O => \GPIOPortRd[15]_INST_0_i_3_n_0\
    );
\GPIOPortRd[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][15]\,
      I1 => \array_reg_reg_n_0_[2][15]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][15]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][15]\,
      O => \GPIOPortRd[15]_INST_0_i_4_n_0\
    );
\GPIOPortRd[15]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][15]\,
      I1 => \array_reg_reg_n_0_[6][15]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][15]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][15]\,
      O => \GPIOPortRd[15]_INST_0_i_5_n_0\
    );
\GPIOPortRd[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[1]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[1]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[1]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(1)
    );
\GPIOPortRd[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[1]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[1]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[1]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][1]\,
      I1 => \array_reg_reg_n_0_[10][1]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][1]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][1]\,
      O => \GPIOPortRd[1]_INST_0_i_2_n_0\
    );
\GPIOPortRd[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][1]\,
      I1 => \array_reg_reg_n_0_[14][1]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][1]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][1]\,
      O => \GPIOPortRd[1]_INST_0_i_3_n_0\
    );
\GPIOPortRd[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][1]\,
      I1 => \array_reg_reg_n_0_[2][1]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][1]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][1]\,
      O => \GPIOPortRd[1]_INST_0_i_4_n_0\
    );
\GPIOPortRd[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][1]\,
      I1 => \array_reg_reg_n_0_[6][1]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][1]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][1]\,
      O => \GPIOPortRd[1]_INST_0_i_5_n_0\
    );
\GPIOPortRd[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => out_fifo_full,
      I1 => full,
      O => GPIOPortRd(16)
    );
\GPIOPortRd[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[2]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[2]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[2]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(2)
    );
\GPIOPortRd[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[2]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[2]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[2]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][2]\,
      I1 => \array_reg_reg_n_0_[10][2]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][2]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][2]\,
      O => \GPIOPortRd[2]_INST_0_i_2_n_0\
    );
\GPIOPortRd[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][2]\,
      I1 => \array_reg_reg_n_0_[14][2]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][2]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][2]\,
      O => \GPIOPortRd[2]_INST_0_i_3_n_0\
    );
\GPIOPortRd[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][2]\,
      I1 => \array_reg_reg_n_0_[2][2]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][2]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][2]\,
      O => \GPIOPortRd[2]_INST_0_i_4_n_0\
    );
\GPIOPortRd[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][2]\,
      I1 => \array_reg_reg_n_0_[6][2]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][2]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][2]\,
      O => \GPIOPortRd[2]_INST_0_i_5_n_0\
    );
\GPIOPortRd[30]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_reg,
      O => GPIOPortRd(17)
    );
\GPIOPortRd[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[3]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[3]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[3]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(3)
    );
\GPIOPortRd[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[3]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[3]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[3]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][3]\,
      I1 => \array_reg_reg_n_0_[10][3]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][3]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][3]\,
      O => \GPIOPortRd[3]_INST_0_i_2_n_0\
    );
\GPIOPortRd[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][3]\,
      I1 => \array_reg_reg_n_0_[14][3]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][3]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][3]\,
      O => \GPIOPortRd[3]_INST_0_i_3_n_0\
    );
\GPIOPortRd[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][3]\,
      I1 => \array_reg_reg_n_0_[2][3]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][3]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][3]\,
      O => \GPIOPortRd[3]_INST_0_i_4_n_0\
    );
\GPIOPortRd[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][3]\,
      I1 => \array_reg_reg_n_0_[6][3]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][3]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][3]\,
      O => \GPIOPortRd[3]_INST_0_i_5_n_0\
    );
\GPIOPortRd[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[4]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[4]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[4]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(4)
    );
\GPIOPortRd[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[4]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[4]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[4]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][4]\,
      I1 => \array_reg_reg_n_0_[10][4]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][4]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][4]\,
      O => \GPIOPortRd[4]_INST_0_i_2_n_0\
    );
\GPIOPortRd[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][4]\,
      I1 => \array_reg_reg_n_0_[14][4]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][4]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][4]\,
      O => \GPIOPortRd[4]_INST_0_i_3_n_0\
    );
\GPIOPortRd[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][4]\,
      I1 => \array_reg_reg_n_0_[2][4]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][4]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][4]\,
      O => \GPIOPortRd[4]_INST_0_i_4_n_0\
    );
\GPIOPortRd[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][4]\,
      I1 => \array_reg_reg_n_0_[6][4]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][4]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][4]\,
      O => \GPIOPortRd[4]_INST_0_i_5_n_0\
    );
\GPIOPortRd[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[5]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[5]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[5]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(5)
    );
\GPIOPortRd[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[5]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[5]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[5]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][5]\,
      I1 => \array_reg_reg_n_0_[10][5]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][5]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][5]\,
      O => \GPIOPortRd[5]_INST_0_i_2_n_0\
    );
\GPIOPortRd[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][5]\,
      I1 => \array_reg_reg_n_0_[14][5]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][5]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][5]\,
      O => \GPIOPortRd[5]_INST_0_i_3_n_0\
    );
\GPIOPortRd[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][5]\,
      I1 => \array_reg_reg_n_0_[2][5]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][5]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][5]\,
      O => \GPIOPortRd[5]_INST_0_i_4_n_0\
    );
\GPIOPortRd[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][5]\,
      I1 => \array_reg_reg_n_0_[6][5]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][5]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][5]\,
      O => \GPIOPortRd[5]_INST_0_i_5_n_0\
    );
\GPIOPortRd[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[6]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[6]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[6]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(6)
    );
\GPIOPortRd[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[6]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[6]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[6]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][6]\,
      I1 => \array_reg_reg_n_0_[10][6]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][6]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][6]\,
      O => \GPIOPortRd[6]_INST_0_i_2_n_0\
    );
\GPIOPortRd[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][6]\,
      I1 => \array_reg_reg_n_0_[14][6]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][6]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][6]\,
      O => \GPIOPortRd[6]_INST_0_i_3_n_0\
    );
\GPIOPortRd[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][6]\,
      I1 => \array_reg_reg_n_0_[2][6]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][6]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][6]\,
      O => \GPIOPortRd[6]_INST_0_i_4_n_0\
    );
\GPIOPortRd[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][6]\,
      I1 => \array_reg_reg_n_0_[6][6]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][6]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][6]\,
      O => \GPIOPortRd[6]_INST_0_i_5_n_0\
    );
\GPIOPortRd[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[7]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[7]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[7]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(7)
    );
\GPIOPortRd[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[7]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[7]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[7]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][7]\,
      I1 => \array_reg_reg_n_0_[10][7]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][7]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][7]\,
      O => \GPIOPortRd[7]_INST_0_i_2_n_0\
    );
\GPIOPortRd[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][7]\,
      I1 => \array_reg_reg_n_0_[14][7]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][7]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][7]\,
      O => \GPIOPortRd[7]_INST_0_i_3_n_0\
    );
\GPIOPortRd[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][7]\,
      I1 => \array_reg_reg_n_0_[2][7]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][7]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][7]\,
      O => \GPIOPortRd[7]_INST_0_i_4_n_0\
    );
\GPIOPortRd[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][7]\,
      I1 => \array_reg_reg_n_0_[6][7]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][7]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][7]\,
      O => \GPIOPortRd[7]_INST_0_i_5_n_0\
    );
\GPIOPortRd[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[8]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[8]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[8]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(8)
    );
\GPIOPortRd[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[8]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[8]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[8]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][8]\,
      I1 => \array_reg_reg_n_0_[10][8]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][8]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][8]\,
      O => \GPIOPortRd[8]_INST_0_i_2_n_0\
    );
\GPIOPortRd[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][8]\,
      I1 => \array_reg_reg_n_0_[14][8]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][8]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][8]\,
      O => \GPIOPortRd[8]_INST_0_i_3_n_0\
    );
\GPIOPortRd[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][8]\,
      I1 => \array_reg_reg_n_0_[2][8]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][8]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][8]\,
      O => \GPIOPortRd[8]_INST_0_i_4_n_0\
    );
\GPIOPortRd[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][8]\,
      I1 => \array_reg_reg_n_0_[6][8]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][8]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][8]\,
      O => \GPIOPortRd[8]_INST_0_i_5_n_0\
    );
\GPIOPortRd[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \GPIOPortRd[9]_INST_0_i_1_n_0\,
      I1 => \r_ptr_reg_reg__0\(3),
      I2 => \GPIOPortRd[9]_INST_0_i_2_n_0\,
      I3 => \r_ptr_reg_reg__0\(2),
      I4 => \GPIOPortRd[9]_INST_0_i_3_n_0\,
      I5 => GPIOPortWr(0),
      O => GPIOPortRd(9)
    );
\GPIOPortRd[9]_INST_0_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \GPIOPortRd[9]_INST_0_i_4_n_0\,
      I1 => \GPIOPortRd[9]_INST_0_i_5_n_0\,
      O => \GPIOPortRd[9]_INST_0_i_1_n_0\,
      S => \r_ptr_reg_reg__0\(2)
    );
\GPIOPortRd[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[11][9]\,
      I1 => \array_reg_reg_n_0_[10][9]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[9][9]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[8][9]\,
      O => \GPIOPortRd[9]_INST_0_i_2_n_0\
    );
\GPIOPortRd[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[15][9]\,
      I1 => \array_reg_reg_n_0_[14][9]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[13][9]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[12][9]\,
      O => \GPIOPortRd[9]_INST_0_i_3_n_0\
    );
\GPIOPortRd[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[3][9]\,
      I1 => \array_reg_reg_n_0_[2][9]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[1][9]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[0][9]\,
      O => \GPIOPortRd[9]_INST_0_i_4_n_0\
    );
\GPIOPortRd[9]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \array_reg_reg_n_0_[7][9]\,
      I1 => \array_reg_reg_n_0_[6][9]\,
      I2 => \r_ptr_reg_reg__0\(1),
      I3 => \array_reg_reg_n_0_[5][9]\,
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \array_reg_reg_n_0_[4][9]\,
      O => \GPIOPortRd[9]_INST_0_i_5_n_0\
    );
\array_reg[0][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => out_fifo_full,
      I4 => wr,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[0]_29\
    );
\array_reg[10][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => out_fifo_full,
      I5 => wr,
      O => \array_reg[10]_23\
    );
\array_reg[11][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => out_fifo_full,
      I5 => wr,
      O => \array_reg[11]_17\
    );
\array_reg[12][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => wr,
      I4 => out_fifo_full,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[12]_22\
    );
\array_reg[13][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => wr,
      I4 => out_fifo_full,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[13]_21\
    );
\array_reg[14][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => wr,
      I4 => out_fifo_full,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[14]_20\
    );
\array_reg[15][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => wr,
      I4 => out_fifo_full,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[15][15]_i_1__0_n_0\
    );
\array_reg[1][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => out_fifo_full,
      I4 => wr,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[1]_30\
    );
\array_reg[2][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => out_fifo_full,
      I4 => wr,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[2]_31\
    );
\array_reg[3][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => out_fifo_full,
      I4 => wr,
      I5 => \w_ptr_reg_reg__0\(3),
      O => \array_reg[3]_18\
    );
\array_reg[4][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => wr,
      I5 => out_fifo_full,
      O => \array_reg[4]_28\
    );
\array_reg[5][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(1),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => wr,
      I5 => out_fifo_full,
      O => \array_reg[5]_27\
    );
\array_reg[6][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(2),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => wr,
      I5 => out_fifo_full,
      O => \array_reg[6]_26\
    );
\array_reg[7][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(3),
      I1 => \w_ptr_reg_reg__0\(2),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(0),
      I4 => wr,
      I5 => out_fifo_full,
      O => \array_reg[7]_19\
    );
\array_reg[8][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => out_fifo_full,
      I5 => wr,
      O => \array_reg[8]_25\
    );
\array_reg[9][15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(0),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \w_ptr_reg_reg__0\(3),
      I4 => out_fifo_full,
      I5 => wr,
      O => \array_reg[9]_24\
    );
\array_reg_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[0][0]\
    );
\array_reg_reg[0][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[0][10]\
    );
\array_reg_reg[0][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[0][11]\
    );
\array_reg_reg[0][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[0][12]\
    );
\array_reg_reg[0][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[0][13]\
    );
\array_reg_reg[0][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[0][14]\
    );
\array_reg_reg[0][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[0][15]\
    );
\array_reg_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[0][1]\
    );
\array_reg_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[0][2]\
    );
\array_reg_reg[0][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[0][3]\
    );
\array_reg_reg[0][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[0][4]\
    );
\array_reg_reg[0][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[0][5]\
    );
\array_reg_reg[0][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[0][6]\
    );
\array_reg_reg[0][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[0][7]\
    );
\array_reg_reg[0][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[0][8]\
    );
\array_reg_reg[0][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[0]_29\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[0][9]\
    );
\array_reg_reg[10][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[10][0]\
    );
\array_reg_reg[10][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[10][10]\
    );
\array_reg_reg[10][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[10][11]\
    );
\array_reg_reg[10][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[10][12]\
    );
\array_reg_reg[10][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[10][13]\
    );
\array_reg_reg[10][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[10][14]\
    );
\array_reg_reg[10][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[10][15]\
    );
\array_reg_reg[10][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[10][1]\
    );
\array_reg_reg[10][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[10][2]\
    );
\array_reg_reg[10][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[10][3]\
    );
\array_reg_reg[10][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[10][4]\
    );
\array_reg_reg[10][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[10][5]\
    );
\array_reg_reg[10][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[10][6]\
    );
\array_reg_reg[10][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[10][7]\
    );
\array_reg_reg[10][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[10][8]\
    );
\array_reg_reg[10][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[10]_23\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[10][9]\
    );
\array_reg_reg[11][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[11][0]\
    );
\array_reg_reg[11][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[11][10]\
    );
\array_reg_reg[11][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[11][11]\
    );
\array_reg_reg[11][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[11][12]\
    );
\array_reg_reg[11][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[11][13]\
    );
\array_reg_reg[11][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[11][14]\
    );
\array_reg_reg[11][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[11][15]\
    );
\array_reg_reg[11][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[11][1]\
    );
\array_reg_reg[11][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[11][2]\
    );
\array_reg_reg[11][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[11][3]\
    );
\array_reg_reg[11][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[11][4]\
    );
\array_reg_reg[11][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[11][5]\
    );
\array_reg_reg[11][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[11][6]\
    );
\array_reg_reg[11][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[11][7]\
    );
\array_reg_reg[11][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[11][8]\
    );
\array_reg_reg[11][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[11]_17\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[11][9]\
    );
\array_reg_reg[12][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[12][0]\
    );
\array_reg_reg[12][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[12][10]\
    );
\array_reg_reg[12][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[12][11]\
    );
\array_reg_reg[12][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[12][12]\
    );
\array_reg_reg[12][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[12][13]\
    );
\array_reg_reg[12][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[12][14]\
    );
\array_reg_reg[12][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[12][15]\
    );
\array_reg_reg[12][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[12][1]\
    );
\array_reg_reg[12][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[12][2]\
    );
\array_reg_reg[12][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[12][3]\
    );
\array_reg_reg[12][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[12][4]\
    );
\array_reg_reg[12][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[12][5]\
    );
\array_reg_reg[12][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[12][6]\
    );
\array_reg_reg[12][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[12][7]\
    );
\array_reg_reg[12][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[12][8]\
    );
\array_reg_reg[12][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[12]_22\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[12][9]\
    );
\array_reg_reg[13][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[13][0]\
    );
\array_reg_reg[13][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[13][10]\
    );
\array_reg_reg[13][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[13][11]\
    );
\array_reg_reg[13][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[13][12]\
    );
\array_reg_reg[13][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[13][13]\
    );
\array_reg_reg[13][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[13][14]\
    );
\array_reg_reg[13][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[13][15]\
    );
\array_reg_reg[13][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[13][1]\
    );
\array_reg_reg[13][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[13][2]\
    );
\array_reg_reg[13][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[13][3]\
    );
\array_reg_reg[13][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[13][4]\
    );
\array_reg_reg[13][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[13][5]\
    );
\array_reg_reg[13][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[13][6]\
    );
\array_reg_reg[13][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[13][7]\
    );
\array_reg_reg[13][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[13][8]\
    );
\array_reg_reg[13][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[13]_21\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[13][9]\
    );
\array_reg_reg[14][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[14][0]\
    );
\array_reg_reg[14][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[14][10]\
    );
\array_reg_reg[14][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[14][11]\
    );
\array_reg_reg[14][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[14][12]\
    );
\array_reg_reg[14][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[14][13]\
    );
\array_reg_reg[14][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[14][14]\
    );
\array_reg_reg[14][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[14][15]\
    );
\array_reg_reg[14][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[14][1]\
    );
\array_reg_reg[14][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[14][2]\
    );
\array_reg_reg[14][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[14][3]\
    );
\array_reg_reg[14][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[14][4]\
    );
\array_reg_reg[14][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[14][5]\
    );
\array_reg_reg[14][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[14][6]\
    );
\array_reg_reg[14][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[14][7]\
    );
\array_reg_reg[14][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[14][8]\
    );
\array_reg_reg[14][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[14]_20\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[14][9]\
    );
\array_reg_reg[15][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[15][0]\
    );
\array_reg_reg[15][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[15][10]\
    );
\array_reg_reg[15][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[15][11]\
    );
\array_reg_reg[15][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[15][12]\
    );
\array_reg_reg[15][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[15][13]\
    );
\array_reg_reg[15][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[15][14]\
    );
\array_reg_reg[15][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[15][15]\
    );
\array_reg_reg[15][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[15][1]\
    );
\array_reg_reg[15][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[15][2]\
    );
\array_reg_reg[15][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[15][3]\
    );
\array_reg_reg[15][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[15][4]\
    );
\array_reg_reg[15][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[15][5]\
    );
\array_reg_reg[15][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[15][6]\
    );
\array_reg_reg[15][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[15][7]\
    );
\array_reg_reg[15][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[15][8]\
    );
\array_reg_reg[15][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[15][15]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[15][9]\
    );
\array_reg_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[1][0]\
    );
\array_reg_reg[1][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[1][10]\
    );
\array_reg_reg[1][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[1][11]\
    );
\array_reg_reg[1][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[1][12]\
    );
\array_reg_reg[1][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[1][13]\
    );
\array_reg_reg[1][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[1][14]\
    );
\array_reg_reg[1][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[1][15]\
    );
\array_reg_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[1][1]\
    );
\array_reg_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[1][2]\
    );
\array_reg_reg[1][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[1][3]\
    );
\array_reg_reg[1][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[1][4]\
    );
\array_reg_reg[1][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[1][5]\
    );
\array_reg_reg[1][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[1][6]\
    );
\array_reg_reg[1][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[1][7]\
    );
\array_reg_reg[1][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[1][8]\
    );
\array_reg_reg[1][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[1]_30\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[1][9]\
    );
\array_reg_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[2][0]\
    );
\array_reg_reg[2][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[2][10]\
    );
\array_reg_reg[2][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[2][11]\
    );
\array_reg_reg[2][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[2][12]\
    );
\array_reg_reg[2][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[2][13]\
    );
\array_reg_reg[2][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[2][14]\
    );
\array_reg_reg[2][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[2][15]\
    );
\array_reg_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[2][1]\
    );
\array_reg_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[2][2]\
    );
\array_reg_reg[2][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[2][3]\
    );
\array_reg_reg[2][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[2][4]\
    );
\array_reg_reg[2][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[2][5]\
    );
\array_reg_reg[2][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[2][6]\
    );
\array_reg_reg[2][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[2][7]\
    );
\array_reg_reg[2][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[2][8]\
    );
\array_reg_reg[2][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[2]_31\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[2][9]\
    );
\array_reg_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[3][0]\
    );
\array_reg_reg[3][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[3][10]\
    );
\array_reg_reg[3][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[3][11]\
    );
\array_reg_reg[3][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[3][12]\
    );
\array_reg_reg[3][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[3][13]\
    );
\array_reg_reg[3][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[3][14]\
    );
\array_reg_reg[3][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[3][15]\
    );
\array_reg_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[3][1]\
    );
\array_reg_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[3][2]\
    );
\array_reg_reg[3][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[3][3]\
    );
\array_reg_reg[3][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[3][4]\
    );
\array_reg_reg[3][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[3][5]\
    );
\array_reg_reg[3][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[3][6]\
    );
\array_reg_reg[3][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[3][7]\
    );
\array_reg_reg[3][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[3][8]\
    );
\array_reg_reg[3][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[3]_18\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[3][9]\
    );
\array_reg_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[4][0]\
    );
\array_reg_reg[4][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[4][10]\
    );
\array_reg_reg[4][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[4][11]\
    );
\array_reg_reg[4][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[4][12]\
    );
\array_reg_reg[4][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[4][13]\
    );
\array_reg_reg[4][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[4][14]\
    );
\array_reg_reg[4][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[4][15]\
    );
\array_reg_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[4][1]\
    );
\array_reg_reg[4][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[4][2]\
    );
\array_reg_reg[4][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[4][3]\
    );
\array_reg_reg[4][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[4][4]\
    );
\array_reg_reg[4][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[4][5]\
    );
\array_reg_reg[4][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[4][6]\
    );
\array_reg_reg[4][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[4][7]\
    );
\array_reg_reg[4][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[4][8]\
    );
\array_reg_reg[4][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[4]_28\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[4][9]\
    );
\array_reg_reg[5][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[5][0]\
    );
\array_reg_reg[5][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[5][10]\
    );
\array_reg_reg[5][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[5][11]\
    );
\array_reg_reg[5][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[5][12]\
    );
\array_reg_reg[5][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[5][13]\
    );
\array_reg_reg[5][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[5][14]\
    );
\array_reg_reg[5][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[5][15]\
    );
\array_reg_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[5][1]\
    );
\array_reg_reg[5][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[5][2]\
    );
\array_reg_reg[5][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[5][3]\
    );
\array_reg_reg[5][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[5][4]\
    );
\array_reg_reg[5][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[5][5]\
    );
\array_reg_reg[5][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[5][6]\
    );
\array_reg_reg[5][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[5][7]\
    );
\array_reg_reg[5][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[5][8]\
    );
\array_reg_reg[5][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[5]_27\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[5][9]\
    );
\array_reg_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[6][0]\
    );
\array_reg_reg[6][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[6][10]\
    );
\array_reg_reg[6][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[6][11]\
    );
\array_reg_reg[6][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[6][12]\
    );
\array_reg_reg[6][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[6][13]\
    );
\array_reg_reg[6][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[6][14]\
    );
\array_reg_reg[6][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[6][15]\
    );
\array_reg_reg[6][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[6][1]\
    );
\array_reg_reg[6][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[6][2]\
    );
\array_reg_reg[6][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[6][3]\
    );
\array_reg_reg[6][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[6][4]\
    );
\array_reg_reg[6][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[6][5]\
    );
\array_reg_reg[6][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[6][6]\
    );
\array_reg_reg[6][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[6][7]\
    );
\array_reg_reg[6][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[6][8]\
    );
\array_reg_reg[6][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[6]_26\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[6][9]\
    );
\array_reg_reg[7][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[7][0]\
    );
\array_reg_reg[7][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[7][10]\
    );
\array_reg_reg[7][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[7][11]\
    );
\array_reg_reg[7][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[7][12]\
    );
\array_reg_reg[7][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[7][13]\
    );
\array_reg_reg[7][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[7][14]\
    );
\array_reg_reg[7][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[7][15]\
    );
\array_reg_reg[7][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[7][1]\
    );
\array_reg_reg[7][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[7][2]\
    );
\array_reg_reg[7][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[7][3]\
    );
\array_reg_reg[7][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[7][4]\
    );
\array_reg_reg[7][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[7][5]\
    );
\array_reg_reg[7][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[7][6]\
    );
\array_reg_reg[7][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[7][7]\
    );
\array_reg_reg[7][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[7][8]\
    );
\array_reg_reg[7][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[7]_19\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[7][9]\
    );
\array_reg_reg[8][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[8][0]\
    );
\array_reg_reg[8][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[8][10]\
    );
\array_reg_reg[8][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[8][11]\
    );
\array_reg_reg[8][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[8][12]\
    );
\array_reg_reg[8][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[8][13]\
    );
\array_reg_reg[8][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[8][14]\
    );
\array_reg_reg[8][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[8][15]\
    );
\array_reg_reg[8][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[8][1]\
    );
\array_reg_reg[8][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[8][2]\
    );
\array_reg_reg[8][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[8][3]\
    );
\array_reg_reg[8][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[8][4]\
    );
\array_reg_reg[8][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[8][5]\
    );
\array_reg_reg[8][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[8][6]\
    );
\array_reg_reg[8][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[8][7]\
    );
\array_reg_reg[8][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[8][8]\
    );
\array_reg_reg[8][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[8]_25\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[8][9]\
    );
\array_reg_reg[9][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(0),
      Q => \array_reg_reg_n_0_[9][0]\
    );
\array_reg_reg[9][10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(10),
      Q => \array_reg_reg_n_0_[9][10]\
    );
\array_reg_reg[9][11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(11),
      Q => \array_reg_reg_n_0_[9][11]\
    );
\array_reg_reg[9][12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(12),
      Q => \array_reg_reg_n_0_[9][12]\
    );
\array_reg_reg[9][13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(13),
      Q => \array_reg_reg_n_0_[9][13]\
    );
\array_reg_reg[9][14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(14),
      Q => \array_reg_reg_n_0_[9][14]\
    );
\array_reg_reg[9][15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(15),
      Q => \array_reg_reg_n_0_[9][15]\
    );
\array_reg_reg[9][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(1),
      Q => \array_reg_reg_n_0_[9][1]\
    );
\array_reg_reg[9][2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(2),
      Q => \array_reg_reg_n_0_[9][2]\
    );
\array_reg_reg[9][3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(3),
      Q => \array_reg_reg_n_0_[9][3]\
    );
\array_reg_reg[9][4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(4),
      Q => \array_reg_reg_n_0_[9][4]\
    );
\array_reg_reg[9][5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(5),
      Q => \array_reg_reg_n_0_[9][5]\
    );
\array_reg_reg[9][6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(6),
      Q => \array_reg_reg_n_0_[9][6]\
    );
\array_reg_reg[9][7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(7),
      Q => \array_reg_reg_n_0_[9][7]\
    );
\array_reg_reg[9][8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(8),
      Q => \array_reg_reg_n_0_[9][8]\
    );
\array_reg_reg[9][9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \array_reg[9]_24\,
      CLR => \^fifo_reset\,
      D => D(9),
      Q => \array_reg_reg_n_0_[9][9]\
    );
\empty_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC00C0CCDCCCDC"
    )
        port map (
      I0 => empty_reg_i_2_n_0,
      I1 => empty_reg,
      I2 => blClkOut(1),
      I3 => blClkOut(0),
      I4 => out_fifo_full,
      I5 => wr,
      O => \empty_reg_i_1__0_n_0\
    );
empty_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95556AAAFFFFFFFF"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(3),
      I1 => \r_ptr_reg_reg__0\(2),
      I2 => \r_ptr_reg_reg__0\(0),
      I3 => \r_ptr_reg_reg__0\(1),
      I4 => \w_ptr_reg_reg__0\(3),
      I5 => empty_reg_i_3_n_0,
      O => empty_reg_i_2_n_0
    );
empty_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900906900000"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(2),
      I2 => \w_ptr_reg_reg__0\(1),
      I3 => \r_ptr_reg_reg__0\(1),
      I4 => \r_ptr_reg_reg__0\(0),
      I5 => \w_ptr_reg_reg__0\(0),
      O => empty_reg_i_3_n_0
    );
empty_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \empty_reg_i_1__0_n_0\,
      PRE => \^fifo_reset\,
      Q => empty_reg
    );
\full_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCE0FCFCF0E0F0F0"
    )
        port map (
      I0 => empty_reg,
      I1 => wr,
      I2 => out_fifo_full,
      I3 => blClkOut(0),
      I4 => blClkOut(1),
      I5 => \full_reg_i_2__0_n_0\,
      O => \full_reg_i_1__0_n_0\
    );
\full_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888882222222"
    )
        port map (
      I0 => \full_reg_i_3__0_n_0\,
      I1 => \w_ptr_reg_reg__0\(3),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(1),
      I4 => \w_ptr_reg_reg__0\(2),
      I5 => \r_ptr_reg_reg__0\(3),
      O => \full_reg_i_2__0_n_0\
    );
\full_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0840021010084002"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(0),
      I1 => \r_ptr_reg_reg__0\(2),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(1),
      I4 => \w_ptr_reg_reg__0\(2),
      I5 => \r_ptr_reg_reg__0\(1),
      O => \full_reg_i_3__0_n_0\
    );
full_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \^fifo_reset\,
      D => \full_reg_i_1__0_n_0\,
      Q => out_fifo_full
    );
\r_ptr_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(0),
      O => \r_ptr_reg[0]_i_1_n_0\
    );
\r_ptr_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(0),
      I1 => \r_ptr_reg_reg__0\(1),
      O => \r_ptr_reg[1]_i_1_n_0\
    );
\r_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(2),
      I1 => \r_ptr_reg_reg__0\(1),
      I2 => \r_ptr_reg_reg__0\(0),
      O => \r_ptr_reg[2]_i_1_n_0\
    );
\r_ptr_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080C"
    )
        port map (
      I0 => wr,
      I1 => blClkOut(1),
      I2 => blClkOut(0),
      I3 => empty_reg,
      O => \r_ptr_reg[3]_i_1__0_n_0\
    );
\r_ptr_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_ptr_reg_reg__0\(1),
      I1 => \r_ptr_reg_reg__0\(0),
      I2 => \r_ptr_reg_reg__0\(2),
      I3 => \r_ptr_reg_reg__0\(3),
      O => \r_ptr_reg[3]_i_2_n_0\
    );
\r_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \r_ptr_reg[0]_i_1_n_0\,
      Q => \r_ptr_reg_reg__0\(0)
    );
\r_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \r_ptr_reg[1]_i_1_n_0\,
      Q => \r_ptr_reg_reg__0\(1)
    );
\r_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \r_ptr_reg[2]_i_1_n_0\,
      Q => \r_ptr_reg_reg__0\(2)
    );
\r_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \r_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \r_ptr_reg[3]_i_2_n_0\,
      Q => \r_ptr_reg_reg__0\(3)
    );
\w_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      O => \w_ptr_reg[0]_i_1__0_n_0\
    );
\w_ptr_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      O => \w_ptr_reg[1]_i_1__0_n_0\
    );
\w_ptr_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(0),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(2),
      O => \w_ptr_reg[2]_i_1__0_n_0\
    );
\w_ptr_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F0"
    )
        port map (
      I0 => blClkOut(1),
      I1 => blClkOut(0),
      I2 => wr,
      I3 => out_fifo_full,
      O => \w_ptr_reg[3]_i_1__0_n_0\
    );
\w_ptr_reg[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \w_ptr_reg_reg__0\(2),
      I1 => \w_ptr_reg_reg__0\(1),
      I2 => \w_ptr_reg_reg__0\(0),
      I3 => \w_ptr_reg_reg__0\(3),
      O => \w_ptr_reg[3]_i_2__0_n_0\
    );
\w_ptr_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \w_ptr_reg[0]_i_1__0_n_0\,
      Q => \w_ptr_reg_reg__0\(0)
    );
\w_ptr_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \w_ptr_reg[1]_i_1__0_n_0\,
      Q => \w_ptr_reg_reg__0\(1)
    );
\w_ptr_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \w_ptr_reg[2]_i_1__0_n_0\,
      Q => \w_ptr_reg_reg__0\(2)
    );
\w_ptr_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \w_ptr_reg[3]_i_1__0_n_0\,
      CLR => \^fifo_reset\,
      D => \w_ptr_reg[3]_i_2__0_n_0\,
      Q => \w_ptr_reg_reg__0\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_sr_2B_16bit is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_n : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DIn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_sr_2B_16bit : entity is "sr_2B_16bit";
end GPIOTest_GPIOInterface_0_0_sr_2B_16bit;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_sr_2B_16bit is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  SR(0) <= \^sr\(0);
\data_sr_content_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(0),
      Q => \^d\(0),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(1),
      Q => \^d\(1),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(2),
      Q => \^d\(2),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(3),
      Q => \^d\(3),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(4),
      Q => \^d\(4),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(5),
      Q => \^d\(5),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(6),
      Q => \^d\(6),
      R => \^sr\(0)
    );
\data_sr_content_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => DIn(7),
      Q => \^d\(7),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(0),
      Q => \^d\(8),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(1),
      Q => \^d\(9),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(2),
      Q => \^d\(10),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(3),
      Q => \^d\(11),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(4),
      Q => \^d\(12),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(5),
      Q => \^d\(13),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(6),
      Q => \^d\(14),
      R => \^sr\(0)
    );
\data_sr_content_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \^d\(7),
      Q => \^d\(15),
      R => \^sr\(0)
    );
nen_ctrl0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0_GPIOInterface is
  port (
    phi1 : out STD_LOGIC;
    phi2 : out STD_LOGIC;
    GPIOPortRd : out STD_LOGIC_VECTOR ( 18 downto 0 );
    DOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX : out STD_LOGIC_VECTOR ( 2 downto 0 );
    nen_ctrl0 : out STD_LOGIC;
    nen_idb : out STD_LOGIC;
    nen_adl : out STD_LOGIC;
    nen_adh : out STD_LOGIC;
    SEL : out STD_LOGIC;
    clk : in STD_LOGIC;
    GPIOPortWr : in STD_LOGIC_VECTOR ( 21 downto 0 );
    DIn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GPIOTest_GPIOInterface_0_0_GPIOInterface : entity is "GPIOInterface";
end GPIOTest_GPIOInterface_0_0_GPIOInterface;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0_GPIOInterface is
  signal \/i_/i__n_0\ : STD_LOGIC;
  signal \/i___0_n_0\ : STD_LOGIC;
  signal \/i___1_n_0\ : STD_LOGIC;
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_rdState[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rdState_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_rdState_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_rdState_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rdState_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_rdState_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rdState_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_rdState_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rdState_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_rdState_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_rdState_reg_n_0_[4]\ : signal is "yes";
  signal \FSM_sequential_fifoState[2]_i_1_n_0\ : STD_LOGIC;
  signal \^sel\ : STD_LOGIC;
  signal SEL_i_3_n_0 : STD_LOGIC;
  signal blClkIn : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \blClkIn[0]_i_1_n_0\ : STD_LOGIC;
  signal \blClkIn[1]_i_1_n_0\ : STD_LOGIC;
  signal blClkOut : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \blClkOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \blClkOut[1]_i_1_n_0\ : STD_LOGIC;
  signal blExc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal blExc0 : STD_LOGIC;
  signal \blExc[0]_i_1_n_0\ : STD_LOGIC;
  signal \blExc[1]_i_2_n_0\ : STD_LOGIC;
  signal blRdData : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \blRdData[0]_i_1_n_0\ : STD_LOGIC;
  signal \blRdData[1]_i_1_n_0\ : STD_LOGIC;
  signal cmd_fifo_n_1 : STD_LOGIC;
  signal cmd_fifo_n_10 : STD_LOGIC;
  signal cmd_fifo_n_11 : STD_LOGIC;
  signal cmd_fifo_n_12 : STD_LOGIC;
  signal cmd_fifo_n_13 : STD_LOGIC;
  signal cmd_fifo_n_14 : STD_LOGIC;
  signal cmd_fifo_n_15 : STD_LOGIC;
  signal cmd_fifo_n_16 : STD_LOGIC;
  signal cmd_fifo_n_17 : STD_LOGIC;
  signal cmd_fifo_n_18 : STD_LOGIC;
  signal cmd_fifo_n_2 : STD_LOGIC;
  signal cmd_fifo_n_3 : STD_LOGIC;
  signal cmd_fifo_n_4 : STD_LOGIC;
  signal cmd_fifo_n_5 : STD_LOGIC;
  signal cmd_fifo_n_6 : STD_LOGIC;
  signal cmd_fifo_n_7 : STD_LOGIC;
  signal cmd_fifo_n_8 : STD_LOGIC;
  signal cmd_fifo_n_9 : STD_LOGIC;
  signal data_ena : STD_LOGIC;
  signal data_ena_0 : STD_LOGIC;
  signal delay_reg : STD_LOGIC;
  signal dly_phi2_n_0 : STD_LOGIC;
  signal \edges_reg_n_0_[0]\ : STD_LOGIC;
  signal fifoState : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of fifoState : signal is "yes";
  signal fifoState1 : STD_LOGIC;
  signal fifoState13_out : STD_LOGIC;
  signal fifo_reset : STD_LOGIC;
  signal full : STD_LOGIC;
  signal \i___1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal nen_adh_i_1_n_0 : STD_LOGIC;
  signal nen_ctrl0_i_2_n_0 : STD_LOGIC;
  signal out_fifo_wr_i_1_n_0 : STD_LOGIC;
  signal p1_edges_n_1 : STD_LOGIC;
  signal p2_edges_n_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \phiState[0]_i_1_n_0\ : STD_LOGIC;
  signal \phiState[1]_i_1_n_0\ : STD_LOGIC;
  signal \phiState_reg_n_0_[0]\ : STD_LOGIC;
  signal \phiState_reg_n_0_[1]\ : STD_LOGIC;
  signal phi_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal phi_cnt0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \phi_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \phi_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \phi_cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \phi_cnt1_carry__2_n_3\ : STD_LOGIC;
  signal phi_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_5_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_6_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_7_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_i_8_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_n_0 : STD_LOGIC;
  signal phi_cnt1_carry_n_1 : STD_LOGIC;
  signal phi_cnt1_carry_n_2 : STD_LOGIC;
  signal phi_cnt1_carry_n_3 : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \phi_cnt1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \phi_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \phi_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \phi_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \phi_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \phi_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal rd : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal sig_in : STD_LOGIC;
  signal w_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal wr : STD_LOGIC;
  signal NLW_phi_cnt1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_phi_cnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_phi_cnt_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rdState_reg[0]\ : label is "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_rdState_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rdState_reg[1]\ : label is "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000";
  attribute KEEP of \FSM_onehot_rdState_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rdState_reg[2]\ : label is "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000";
  attribute KEEP of \FSM_onehot_rdState_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rdState_reg[3]\ : label is "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000";
  attribute KEEP of \FSM_onehot_rdState_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rdState_reg[4]\ : label is "rds_idle:00001,rds_idb:00010,rds_adl:00100,rds_adh:01000,rds_rdy:10000";
  attribute KEEP of \FSM_onehot_rdState_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_fifoState_reg[0]\ : label is "f_idle:000,f_rd_chk:001,f_sel:010,f_out:011,f_read:100";
  attribute KEEP of \FSM_sequential_fifoState_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_fifoState_reg[1]\ : label is "f_idle:000,f_rd_chk:001,f_sel:010,f_out:011,f_read:100";
  attribute KEEP of \FSM_sequential_fifoState_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_fifoState_reg[2]\ : label is "f_idle:000,f_rd_chk:001,f_sel:010,f_out:011,f_read:100";
  attribute KEEP of \FSM_sequential_fifoState_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \blClkIn[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \blClkIn[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \blClkOut[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \blClkOut[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \blExc[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \blExc[1]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \blRdData[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \blRdData[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \phiState[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \phiState[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \phi_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phi_cnt[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \phi_cnt[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \phi_cnt[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \phi_cnt[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \phi_cnt[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \phi_cnt[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \phi_cnt[16]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \phi_cnt[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \phi_cnt[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \phi_cnt[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \phi_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phi_cnt[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phi_cnt[21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phi_cnt[22]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \phi_cnt[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \phi_cnt[24]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \phi_cnt[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \phi_cnt[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \phi_cnt[27]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \phi_cnt[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phi_cnt[29]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phi_cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phi_cnt[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phi_cnt[31]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phi_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phi_cnt[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phi_cnt[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phi_cnt[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phi_cnt[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phi_cnt[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \phi_cnt[9]_i_1\ : label is "soft_lutpair15";
begin
  SEL <= \^sel\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF55AE"
    )
        port map (
      I0 => fifoState(1),
      I1 => blExc(1),
      I2 => blExc(0),
      I3 => fifoState(2),
      I4 => fifoState(0),
      O => \/i__n_0\
    );
\/i_/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555115555151115"
    )
        port map (
      I0 => fifoState(0),
      I1 => fifoState(1),
      I2 => p_0_in,
      I3 => p_2_in,
      I4 => fifoState13_out,
      I5 => fifoState1,
      O => \/i_/i__n_0\
    );
\/i___0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rdState_reg_n_0_[3]\,
      I2 => \FSM_onehot_rdState_reg_n_0_[0]\,
      I3 => \FSM_onehot_rdState_reg_n_0_[2]\,
      O => \/i___0_n_0\
    );
\/i___1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFEE"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rdState_reg_n_0_[1]\,
      I2 => \i___1_i_1_n_0\,
      I3 => \FSM_onehot_rdState_reg_n_0_[0]\,
      I4 => \FSM_onehot_rdState_reg_n_0_[3]\,
      I5 => \FSM_onehot_rdState_reg_n_0_[2]\,
      O => \/i___1_n_0\
    );
\DOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_17,
      Q => DOut(0),
      R => fifo_reset
    );
\DOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_16,
      Q => DOut(1),
      R => fifo_reset
    );
\DOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_15,
      Q => DOut(2),
      R => fifo_reset
    );
\DOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_14,
      Q => DOut(3),
      R => fifo_reset
    );
\DOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_13,
      Q => DOut(4),
      R => fifo_reset
    );
\DOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_12,
      Q => DOut(5),
      R => fifo_reset
    );
\DOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_11,
      Q => DOut(6),
      R => fifo_reset
    );
\DOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_10,
      Q => DOut(7),
      R => fifo_reset
    );
\FSM_onehot_rdState[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[4]\,
      I1 => data_ena_0,
      O => \FSM_onehot_rdState[4]_i_1_n_0\
    );
\FSM_onehot_rdState_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_rdState[4]_i_1_n_0\,
      D => \FSM_onehot_rdState_reg_n_0_[4]\,
      Q => \FSM_onehot_rdState_reg_n_0_[0]\,
      S => reset
    );
\FSM_onehot_rdState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_rdState[4]_i_1_n_0\,
      D => \FSM_onehot_rdState_reg_n_0_[0]\,
      Q => \FSM_onehot_rdState_reg_n_0_[1]\,
      R => reset
    );
\FSM_onehot_rdState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_rdState[4]_i_1_n_0\,
      D => \FSM_onehot_rdState_reg_n_0_[1]\,
      Q => \FSM_onehot_rdState_reg_n_0_[2]\,
      R => reset
    );
\FSM_onehot_rdState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_rdState[4]_i_1_n_0\,
      D => \FSM_onehot_rdState_reg_n_0_[2]\,
      Q => \FSM_onehot_rdState_reg_n_0_[3]\,
      R => reset
    );
\FSM_onehot_rdState_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_rdState[4]_i_1_n_0\,
      D => \FSM_onehot_rdState_reg_n_0_[3]\,
      Q => \FSM_onehot_rdState_reg_n_0_[4]\,
      R => reset
    );
\FSM_sequential_fifoState[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E222"
    )
        port map (
      I0 => fifoState(2),
      I1 => \/i__n_0\,
      I2 => fifoState(1),
      I3 => fifoState(0),
      I4 => fifo_reset,
      O => \FSM_sequential_fifoState[2]_i_1_n_0\
    );
\FSM_sequential_fifoState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p1_edges_n_1,
      Q => fifoState(0),
      R => '0'
    );
\FSM_sequential_fifoState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_fifo_n_1,
      Q => fifoState(1),
      R => '0'
    );
\FSM_sequential_fifoState_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_fifoState[2]_i_1_n_0\,
      Q => fifoState(2),
      R => '0'
    );
\MUX_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_9,
      Q => MUX(0),
      R => fifo_reset
    );
\MUX_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_8,
      Q => MUX(1),
      R => fifo_reset
    );
\MUX_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_7,
      Q => MUX(2),
      R => fifo_reset
    );
SEL_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \phiState_reg_n_0_[1]\,
      I1 => \phiState_reg_n_0_[0]\,
      O => SEL_i_3_n_0
    );
SEL_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p2_edges_n_1,
      Q => \^sel\,
      R => '0'
    );
\blClkIn[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => blClkIn(1),
      I1 => GPIOPortWr(15),
      O => \blClkIn[0]_i_1_n_0\
    );
\blClkIn[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => blClkIn(1),
      I1 => GPIOPortWr(15),
      I2 => blClkIn(0),
      O => \blClkIn[1]_i_1_n_0\
    );
\blClkIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blClkIn[0]_i_1_n_0\,
      Q => blClkIn(0),
      R => blExc0
    );
\blClkIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blClkIn[1]_i_1_n_0\,
      Q => blClkIn(1),
      R => blExc0
    );
\blClkOut[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => blClkOut(1),
      I1 => GPIOPortWr(16),
      O => \blClkOut[0]_i_1_n_0\
    );
\blClkOut[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => blClkOut(1),
      I1 => GPIOPortWr(16),
      I2 => blClkOut(0),
      O => \blClkOut[1]_i_1_n_0\
    );
\blClkOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blClkOut[0]_i_1_n_0\,
      Q => blClkOut(0),
      R => blExc0
    );
\blClkOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blClkOut[1]_i_1_n_0\,
      Q => blClkOut(1),
      R => blExc0
    );
\blExc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => blExc(1),
      I1 => GPIOPortWr(20),
      O => \blExc[0]_i_1_n_0\
    );
\blExc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => reset_n,
      I1 => GPIOPortWr(21),
      O => blExc0
    );
\blExc[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => blExc(1),
      I1 => GPIOPortWr(20),
      I2 => blExc(0),
      O => \blExc[1]_i_2_n_0\
    );
\blExc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blExc[0]_i_1_n_0\,
      Q => blExc(0),
      R => blExc0
    );
\blExc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blExc[1]_i_2_n_0\,
      Q => blExc(1),
      R => blExc0
    );
\blRdData[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => blRdData(1),
      I1 => GPIOPortWr(19),
      O => \blRdData[0]_i_1_n_0\
    );
\blRdData[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => blRdData(1),
      I1 => GPIOPortWr(19),
      I2 => blRdData(0),
      O => \blRdData[1]_i_1_n_0\
    );
\blRdData_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blRdData[0]_i_1_n_0\,
      Q => blRdData(0),
      R => blExc0
    );
\blRdData_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blRdData[1]_i_1_n_0\,
      Q => blRdData(1),
      R => blExc0
    );
byte_2_word: entity work.GPIOTest_GPIOInterface_0_0_sr_2B_16bit
     port map (
      D(15 downto 0) => w_data(15 downto 0),
      DIn(7 downto 0) => DIn(7 downto 0),
      E(0) => data_ena,
      SR(0) => reset,
      clk => clk,
      reset_n => reset_n
    );
cmd_fifo: entity work.GPIOTest_GPIOInterface_0_0_fifo
     port map (
      D(3) => cmd_fifo_n_3,
      D(2) => cmd_fifo_n_4,
      D(1) => cmd_fifo_n_5,
      D(0) => cmd_fifo_n_6,
      \DOut_reg[7]\(7) => cmd_fifo_n_10,
      \DOut_reg[7]\(6) => cmd_fifo_n_11,
      \DOut_reg[7]\(5) => cmd_fifo_n_12,
      \DOut_reg[7]\(4) => cmd_fifo_n_13,
      \DOut_reg[7]\(3) => cmd_fifo_n_14,
      \DOut_reg[7]\(2) => cmd_fifo_n_15,
      \DOut_reg[7]\(1) => cmd_fifo_n_16,
      \DOut_reg[7]\(0) => cmd_fifo_n_17,
      E(0) => cmd_fifo_n_2,
      \FSM_sequential_fifoState_reg[1]\ => cmd_fifo_n_1,
      \FSM_sequential_fifoState_reg[1]_0\ => \/i__n_0\,
      GPIOPortWr(14 downto 0) => GPIOPortWr(14 downto 0),
      \MUX_reg[2]\(2) => cmd_fifo_n_7,
      \MUX_reg[2]\(1) => cmd_fifo_n_8,
      \MUX_reg[2]\(0) => cmd_fifo_n_9,
      blClkIn(1 downto 0) => blClkIn(1 downto 0),
      clk => clk,
      fifo_rd_reg => cmd_fifo_n_18,
      fifo_reset => fifo_reset,
      full => full,
      in0(0) => fifoState(1),
      \out\(2 downto 0) => fifoState(2 downto 0),
      rd => rd
    );
data_ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEFEEEEE"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rdState_reg_n_0_[3]\,
      I2 => \FSM_onehot_rdState_reg_n_0_[0]\,
      I3 => blRdData(0),
      I4 => blRdData(1),
      I5 => \FSM_onehot_rdState_reg_n_0_[1]\,
      O => data_ena_0
    );
data_ena_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_ena_0,
      Q => data_ena,
      R => reset
    );
dly_phi1: entity work.GPIOTest_GPIOInterface_0_0_Delay
     port map (
      clk => clk,
      phi1 => phi1,
      \phiState_reg[0]\ => \phiState_reg_n_0_[0]\,
      \phiState_reg[1]\ => \phiState_reg_n_0_[1]\,
      sig_in => sig_in
    );
dly_phi2: entity work.GPIOTest_GPIOInterface_0_0_Delay_0
     port map (
      clk => clk,
      delay_reg_reg => dly_phi2_n_0,
      phi2 => phi2,
      \phiState_reg[0]\ => \phiState_reg_n_0_[0]\,
      \phiState_reg[1]\ => \phiState_reg_n_0_[1]\
    );
\edges_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_6,
      Q => \edges_reg_n_0_[0]\,
      R => fifo_reset
    );
\edges_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_5,
      Q => p_2_in,
      R => fifo_reset
    );
\edges_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_4,
      Q => p_0_in3_in,
      R => fifo_reset
    );
\edges_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cmd_fifo_n_2,
      D => cmd_fifo_n_3,
      Q => p_0_in,
      R => fifo_reset
    );
execState: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => fifoState(1),
      I1 => fifoState(0),
      I2 => fifoState(2),
      O => GPIOPortRd(18)
    );
fifo_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => cmd_fifo_n_18,
      Q => rd,
      R => '0'
    );
\i___1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => blRdData(1),
      I1 => blRdData(0),
      O => \i___1_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(14),
      I1 => phi_cnt(15),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(12),
      I1 => phi_cnt(13),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(10),
      I1 => phi_cnt(11),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(8),
      I1 => phi_cnt(9),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(15),
      I1 => phi_cnt(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(13),
      I1 => phi_cnt(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(11),
      I1 => phi_cnt(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(9),
      I1 => phi_cnt(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(22),
      I1 => phi_cnt(23),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(20),
      I1 => phi_cnt(21),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(18),
      I1 => phi_cnt(19),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(16),
      I1 => phi_cnt(17),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(23),
      I1 => phi_cnt(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(21),
      I1 => phi_cnt(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(19),
      I1 => phi_cnt(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(17),
      I1 => phi_cnt(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phi_cnt(30),
      I1 => phi_cnt(31),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(28),
      I1 => phi_cnt(29),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(26),
      I1 => phi_cnt(27),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(24),
      I1 => phi_cnt(25),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(31),
      I1 => phi_cnt(30),
      O => \i__carry__2_i_5_n_0\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(29),
      I1 => phi_cnt(28),
      O => \i__carry__2_i_6_n_0\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(27),
      I1 => phi_cnt(26),
      O => \i__carry__2_i_7_n_0\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(25),
      I1 => phi_cnt(24),
      O => \i__carry__2_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(6),
      I1 => phi_cnt(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phi_cnt(4),
      I1 => phi_cnt(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phi_cnt(0),
      I1 => phi_cnt(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(7),
      I1 => phi_cnt(6),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phi_cnt(5),
      I1 => phi_cnt(4),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phi_cnt(2),
      I1 => phi_cnt(3),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phi_cnt(1),
      I1 => phi_cnt(0),
      O => \i__carry_i_7_n_0\
    );
nen_adh_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rdState_reg_n_0_[3]\,
      I2 => \FSM_onehot_rdState_reg_n_0_[0]\,
      I3 => \FSM_onehot_rdState_reg_n_0_[1]\,
      O => nen_adh_i_1_n_0
    );
nen_adh_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => nen_adh_i_1_n_0,
      Q => nen_adh,
      S => reset
    );
nen_adl_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \/i___0_n_0\,
      Q => nen_adl,
      S => reset
    );
nen_ctrl0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[4]\,
      I1 => \FSM_onehot_rdState_reg_n_0_[2]\,
      I2 => \FSM_onehot_rdState_reg_n_0_[0]\,
      I3 => \FSM_onehot_rdState_reg_n_0_[1]\,
      O => nen_ctrl0_i_2_n_0
    );
nen_ctrl0_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => nen_ctrl0_i_2_n_0,
      Q => nen_ctrl0,
      S => reset
    );
nen_idb_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \/i___1_n_0\,
      Q => nen_idb,
      S => reset
    );
out_fifo_wr_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => \FSM_onehot_rdState_reg_n_0_[2]\,
      I1 => \FSM_onehot_rdState_reg_n_0_[4]\,
      I2 => reset_n,
      I3 => wr,
      O => out_fifo_wr_i_1_n_0
    );
out_fifo_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => out_fifo_wr_i_1_n_0,
      Q => wr,
      R => '0'
    );
p1_edges: entity work.GPIOTest_GPIOInterface_0_0_EdgeDetect
     port map (
      \FSM_sequential_fifoState_reg[0]\ => p1_edges_n_1,
      \FSM_sequential_fifoState_reg[0]_0\ => \/i_/i__n_0\,
      \FSM_sequential_fifoState_reg[1]\ => \/i__n_0\,
      Q(0) => \edges_reg_n_0_[0]\,
      SR(0) => reset,
      clk => clk,
      delay_reg => delay_reg,
      fifoState13_out => fifoState13_out,
      fifo_reset => fifo_reset,
      in0(0) => fifoState(0),
      \phiState_reg[0]\ => \phiState_reg_n_0_[0]\,
      \phiState_reg[1]\ => \phiState_reg_n_0_[1]\,
      sig_in => sig_in
    );
p2_edges: entity work.GPIOTest_GPIOInterface_0_0_EdgeDetect_1
     port map (
      Q(3) => p_0_in,
      Q(2) => p_0_in3_in,
      Q(1) => p_2_in,
      Q(0) => \edges_reg_n_0_[0]\,
      SEL => \^sel\,
      SEL_reg => p2_edges_n_1,
      SR(0) => reset,
      clk => clk,
      delay_reg => delay_reg,
      fifoState1 => fifoState1,
      fifo_reset => fifo_reset,
      \out\(2 downto 0) => fifoState(2 downto 0),
      \phiState_reg[0]\ => \phiState_reg_n_0_[0]\,
      \phiState_reg[1]\ => dly_phi2_n_0,
      \phiState_reg[1]_0\ => SEL_i_3_n_0,
      \phiState_reg[1]_1\ => \phiState_reg_n_0_[1]\
    );
\phiState[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2ECC"
    )
        port map (
      I0 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I1 => \phiState_reg_n_0_[0]\,
      I2 => \phi_cnt1_carry__2_n_0\,
      I3 => reset_n,
      O => \phiState[0]_i_1_n_0\
    );
\phiState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \phiState_reg_n_0_[0]\,
      I1 => \phi_cnt1_carry__2_n_0\,
      I2 => reset_n,
      I3 => \phiState_reg_n_0_[1]\,
      O => \phiState[1]_i_1_n_0\
    );
\phiState_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phiState[0]_i_1_n_0\,
      Q => \phiState_reg_n_0_[0]\,
      R => '0'
    );
\phiState_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \phiState[1]_i_1_n_0\,
      Q => \phiState_reg_n_0_[1]\,
      R => '0'
    );
phi_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => phi_cnt1_carry_n_0,
      CO(2) => phi_cnt1_carry_n_1,
      CO(1) => phi_cnt1_carry_n_2,
      CO(0) => phi_cnt1_carry_n_3,
      CYINIT => '1',
      DI(3) => phi_cnt1_carry_i_1_n_0,
      DI(2) => phi_cnt1_carry_i_2_n_0,
      DI(1) => phi_cnt1_carry_i_3_n_0,
      DI(0) => phi_cnt1_carry_i_4_n_0,
      O(3 downto 0) => NLW_phi_cnt1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => phi_cnt1_carry_i_5_n_0,
      S(2) => phi_cnt1_carry_i_6_n_0,
      S(1) => phi_cnt1_carry_i_7_n_0,
      S(0) => phi_cnt1_carry_i_8_n_0
    );
\phi_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => phi_cnt1_carry_n_0,
      CO(3) => \phi_cnt1_carry__0_n_0\,
      CO(2) => \phi_cnt1_carry__0_n_1\,
      CO(1) => \phi_cnt1_carry__0_n_2\,
      CO(0) => \phi_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \phi_cnt1_carry__0_i_1_n_0\,
      DI(2) => \phi_cnt1_carry__0_i_2_n_0\,
      DI(1) => \phi_cnt1_carry__0_i_3_n_0\,
      DI(0) => \phi_cnt1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \phi_cnt1_carry__0_i_5_n_0\,
      S(2) => \phi_cnt1_carry__0_i_6_n_0\,
      S(1) => \phi_cnt1_carry__0_i_7_n_0\,
      S(0) => \phi_cnt1_carry__0_i_8_n_0\
    );
\phi_cnt1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(14),
      I1 => phi_cnt(15),
      O => \phi_cnt1_carry__0_i_1_n_0\
    );
\phi_cnt1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(12),
      I1 => phi_cnt(13),
      O => \phi_cnt1_carry__0_i_2_n_0\
    );
\phi_cnt1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(10),
      I1 => phi_cnt(11),
      O => \phi_cnt1_carry__0_i_3_n_0\
    );
\phi_cnt1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(8),
      I1 => phi_cnt(9),
      O => \phi_cnt1_carry__0_i_4_n_0\
    );
\phi_cnt1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(15),
      I1 => phi_cnt(14),
      O => \phi_cnt1_carry__0_i_5_n_0\
    );
\phi_cnt1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(13),
      I1 => phi_cnt(12),
      O => \phi_cnt1_carry__0_i_6_n_0\
    );
\phi_cnt1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(11),
      I1 => phi_cnt(10),
      O => \phi_cnt1_carry__0_i_7_n_0\
    );
\phi_cnt1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(9),
      I1 => phi_cnt(8),
      O => \phi_cnt1_carry__0_i_8_n_0\
    );
\phi_cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt1_carry__0_n_0\,
      CO(3) => \phi_cnt1_carry__1_n_0\,
      CO(2) => \phi_cnt1_carry__1_n_1\,
      CO(1) => \phi_cnt1_carry__1_n_2\,
      CO(0) => \phi_cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \phi_cnt1_carry__1_i_1_n_0\,
      DI(2) => \phi_cnt1_carry__1_i_2_n_0\,
      DI(1) => \phi_cnt1_carry__1_i_3_n_0\,
      DI(0) => \phi_cnt1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \phi_cnt1_carry__1_i_5_n_0\,
      S(2) => \phi_cnt1_carry__1_i_6_n_0\,
      S(1) => \phi_cnt1_carry__1_i_7_n_0\,
      S(0) => \phi_cnt1_carry__1_i_8_n_0\
    );
\phi_cnt1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(22),
      I1 => phi_cnt(23),
      O => \phi_cnt1_carry__1_i_1_n_0\
    );
\phi_cnt1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(20),
      I1 => phi_cnt(21),
      O => \phi_cnt1_carry__1_i_2_n_0\
    );
\phi_cnt1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(18),
      I1 => phi_cnt(19),
      O => \phi_cnt1_carry__1_i_3_n_0\
    );
\phi_cnt1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(16),
      I1 => phi_cnt(17),
      O => \phi_cnt1_carry__1_i_4_n_0\
    );
\phi_cnt1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(23),
      I1 => phi_cnt(22),
      O => \phi_cnt1_carry__1_i_5_n_0\
    );
\phi_cnt1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(21),
      I1 => phi_cnt(20),
      O => \phi_cnt1_carry__1_i_6_n_0\
    );
\phi_cnt1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(19),
      I1 => phi_cnt(18),
      O => \phi_cnt1_carry__1_i_7_n_0\
    );
\phi_cnt1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(17),
      I1 => phi_cnt(16),
      O => \phi_cnt1_carry__1_i_8_n_0\
    );
\phi_cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt1_carry__1_n_0\,
      CO(3) => \phi_cnt1_carry__2_n_0\,
      CO(2) => \phi_cnt1_carry__2_n_1\,
      CO(1) => \phi_cnt1_carry__2_n_2\,
      CO(0) => \phi_cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \phi_cnt1_carry__2_i_1_n_0\,
      DI(2) => \phi_cnt1_carry__2_i_2_n_0\,
      DI(1) => \phi_cnt1_carry__2_i_3_n_0\,
      DI(0) => \phi_cnt1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \phi_cnt1_carry__2_i_5_n_0\,
      S(2) => \phi_cnt1_carry__2_i_6_n_0\,
      S(1) => \phi_cnt1_carry__2_i_7_n_0\,
      S(0) => \phi_cnt1_carry__2_i_8_n_0\
    );
\phi_cnt1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phi_cnt(30),
      I1 => phi_cnt(31),
      O => \phi_cnt1_carry__2_i_1_n_0\
    );
\phi_cnt1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(28),
      I1 => phi_cnt(29),
      O => \phi_cnt1_carry__2_i_2_n_0\
    );
\phi_cnt1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(26),
      I1 => phi_cnt(27),
      O => \phi_cnt1_carry__2_i_3_n_0\
    );
\phi_cnt1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(24),
      I1 => phi_cnt(25),
      O => \phi_cnt1_carry__2_i_4_n_0\
    );
\phi_cnt1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(31),
      I1 => phi_cnt(30),
      O => \phi_cnt1_carry__2_i_5_n_0\
    );
\phi_cnt1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(29),
      I1 => phi_cnt(28),
      O => \phi_cnt1_carry__2_i_6_n_0\
    );
\phi_cnt1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(27),
      I1 => phi_cnt(26),
      O => \phi_cnt1_carry__2_i_7_n_0\
    );
\phi_cnt1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(25),
      I1 => phi_cnt(24),
      O => \phi_cnt1_carry__2_i_8_n_0\
    );
phi_cnt1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(6),
      I1 => phi_cnt(7),
      O => phi_cnt1_carry_i_1_n_0
    );
phi_cnt1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(5),
      I1 => phi_cnt(4),
      O => phi_cnt1_carry_i_2_n_0
    );
phi_cnt1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => phi_cnt(3),
      I1 => phi_cnt(2),
      O => phi_cnt1_carry_i_3_n_0
    );
phi_cnt1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => phi_cnt(0),
      I1 => phi_cnt(1),
      O => phi_cnt1_carry_i_4_n_0
    );
phi_cnt1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(7),
      I1 => phi_cnt(6),
      O => phi_cnt1_carry_i_5_n_0
    );
phi_cnt1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(4),
      I1 => phi_cnt(5),
      O => phi_cnt1_carry_i_6_n_0
    );
phi_cnt1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => phi_cnt(2),
      I1 => phi_cnt(3),
      O => phi_cnt1_carry_i_7_n_0
    );
phi_cnt1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => phi_cnt(1),
      I1 => phi_cnt(0),
      O => phi_cnt1_carry_i_8_n_0
    );
\phi_cnt1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phi_cnt1_inferred__0/i__carry_n_0\,
      CO(2) => \phi_cnt1_inferred__0/i__carry_n_1\,
      CO(1) => \phi_cnt1_inferred__0/i__carry_n_2\,
      CO(0) => \phi_cnt1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => '0',
      DI(0) => \i__carry_i_3_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4_n_0\,
      S(2) => \i__carry_i_5_n_0\,
      S(1) => \i__carry_i_6_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\phi_cnt1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt1_inferred__0/i__carry_n_0\,
      CO(3) => \phi_cnt1_inferred__0/i__carry__0_n_0\,
      CO(2) => \phi_cnt1_inferred__0/i__carry__0_n_1\,
      CO(1) => \phi_cnt1_inferred__0/i__carry__0_n_2\,
      CO(0) => \phi_cnt1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\phi_cnt1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt1_inferred__0/i__carry__0_n_0\,
      CO(3) => \phi_cnt1_inferred__0/i__carry__1_n_0\,
      CO(2) => \phi_cnt1_inferred__0/i__carry__1_n_1\,
      CO(1) => \phi_cnt1_inferred__0/i__carry__1_n_2\,
      CO(0) => \phi_cnt1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
\phi_cnt1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt1_inferred__0/i__carry__1_n_0\,
      CO(3) => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      CO(2) => \phi_cnt1_inferred__0/i__carry__2_n_1\,
      CO(1) => \phi_cnt1_inferred__0/i__carry__2_n_2\,
      CO(0) => \phi_cnt1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__2_i_1_n_0\,
      DI(2) => \i__carry__2_i_2_n_0\,
      DI(1) => \i__carry__2_i_3_n_0\,
      DI(0) => \i__carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_phi_cnt1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_5_n_0\,
      S(2) => \i__carry__2_i_6_n_0\,
      S(1) => \i__carry__2_i_7_n_0\,
      S(0) => \i__carry__2_i_8_n_0\
    );
\phi_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0151"
    )
        port map (
      I0 => phi_cnt(0),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[0]_i_1_n_0\
    );
\phi_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(10),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[10]_i_1_n_0\
    );
\phi_cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(11),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[11]_i_1_n_0\
    );
\phi_cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(12),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[12]_i_1_n_0\
    );
\phi_cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(13),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[13]_i_1_n_0\
    );
\phi_cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(14),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[14]_i_1_n_0\
    );
\phi_cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(15),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[15]_i_1_n_0\
    );
\phi_cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(16),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[16]_i_1_n_0\
    );
\phi_cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(17),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[17]_i_1_n_0\
    );
\phi_cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(18),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[18]_i_1_n_0\
    );
\phi_cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(19),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[19]_i_1_n_0\
    );
\phi_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(1),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[1]_i_1_n_0\
    );
\phi_cnt[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(20),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[20]_i_1_n_0\
    );
\phi_cnt[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(21),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[21]_i_1_n_0\
    );
\phi_cnt[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(22),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[22]_i_1_n_0\
    );
\phi_cnt[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(23),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[23]_i_1_n_0\
    );
\phi_cnt[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(24),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[24]_i_1_n_0\
    );
\phi_cnt[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(25),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[25]_i_1_n_0\
    );
\phi_cnt[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(26),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[26]_i_1_n_0\
    );
\phi_cnt[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(27),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[27]_i_1_n_0\
    );
\phi_cnt[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(28),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[28]_i_1_n_0\
    );
\phi_cnt[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(29),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[29]_i_1_n_0\
    );
\phi_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(2),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[2]_i_1_n_0\
    );
\phi_cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(30),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[30]_i_1_n_0\
    );
\phi_cnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(31),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[31]_i_1_n_0\
    );
\phi_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(3),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[3]_i_1_n_0\
    );
\phi_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(4),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[4]_i_1_n_0\
    );
\phi_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(5),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[5]_i_1_n_0\
    );
\phi_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(6),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[6]_i_1_n_0\
    );
\phi_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(7),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[7]_i_1_n_0\
    );
\phi_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(8),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[8]_i_1_n_0\
    );
\phi_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => phi_cnt0(9),
      I1 => \phi_cnt1_inferred__0/i__carry__2_n_0\,
      I2 => \phiState_reg_n_0_[0]\,
      I3 => \phi_cnt1_carry__2_n_0\,
      O => \phi_cnt[9]_i_1_n_0\
    );
\phi_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[0]_i_1_n_0\,
      Q => phi_cnt(0),
      R => reset
    );
\phi_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[10]_i_1_n_0\,
      Q => phi_cnt(10),
      R => reset
    );
\phi_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[11]_i_1_n_0\,
      Q => phi_cnt(11),
      R => reset
    );
\phi_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[12]_i_1_n_0\,
      Q => phi_cnt(12),
      R => reset
    );
\phi_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[8]_i_2_n_0\,
      CO(3) => \phi_cnt_reg[12]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[12]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[12]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(12 downto 9),
      S(3 downto 0) => phi_cnt(12 downto 9)
    );
\phi_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[13]_i_1_n_0\,
      Q => phi_cnt(13),
      R => reset
    );
\phi_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[14]_i_1_n_0\,
      Q => phi_cnt(14),
      R => reset
    );
\phi_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[15]_i_1_n_0\,
      Q => phi_cnt(15),
      R => reset
    );
\phi_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[16]_i_1_n_0\,
      Q => phi_cnt(16),
      R => reset
    );
\phi_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[12]_i_2_n_0\,
      CO(3) => \phi_cnt_reg[16]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[16]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[16]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(16 downto 13),
      S(3 downto 0) => phi_cnt(16 downto 13)
    );
\phi_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[17]_i_1_n_0\,
      Q => phi_cnt(17),
      R => reset
    );
\phi_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[18]_i_1_n_0\,
      Q => phi_cnt(18),
      R => reset
    );
\phi_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[19]_i_1_n_0\,
      Q => phi_cnt(19),
      R => reset
    );
\phi_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[1]_i_1_n_0\,
      Q => phi_cnt(1),
      R => reset
    );
\phi_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[20]_i_1_n_0\,
      Q => phi_cnt(20),
      R => reset
    );
\phi_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[16]_i_2_n_0\,
      CO(3) => \phi_cnt_reg[20]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[20]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[20]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(20 downto 17),
      S(3 downto 0) => phi_cnt(20 downto 17)
    );
\phi_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[21]_i_1_n_0\,
      Q => phi_cnt(21),
      R => reset
    );
\phi_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[22]_i_1_n_0\,
      Q => phi_cnt(22),
      R => reset
    );
\phi_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[23]_i_1_n_0\,
      Q => phi_cnt(23),
      R => reset
    );
\phi_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[24]_i_1_n_0\,
      Q => phi_cnt(24),
      R => reset
    );
\phi_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[20]_i_2_n_0\,
      CO(3) => \phi_cnt_reg[24]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[24]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[24]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(24 downto 21),
      S(3 downto 0) => phi_cnt(24 downto 21)
    );
\phi_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[25]_i_1_n_0\,
      Q => phi_cnt(25),
      R => reset
    );
\phi_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[26]_i_1_n_0\,
      Q => phi_cnt(26),
      R => reset
    );
\phi_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[27]_i_1_n_0\,
      Q => phi_cnt(27),
      R => reset
    );
\phi_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[28]_i_1_n_0\,
      Q => phi_cnt(28),
      R => reset
    );
\phi_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[24]_i_2_n_0\,
      CO(3) => \phi_cnt_reg[28]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[28]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[28]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(28 downto 25),
      S(3 downto 0) => phi_cnt(28 downto 25)
    );
\phi_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[29]_i_1_n_0\,
      Q => phi_cnt(29),
      R => reset
    );
\phi_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[2]_i_1_n_0\,
      Q => phi_cnt(2),
      R => reset
    );
\phi_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[30]_i_1_n_0\,
      Q => phi_cnt(30),
      R => reset
    );
\phi_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[31]_i_1_n_0\,
      Q => phi_cnt(31),
      R => reset
    );
\phi_cnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_phi_cnt_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \phi_cnt_reg[31]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_phi_cnt_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => phi_cnt0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => phi_cnt(31 downto 29)
    );
\phi_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[3]_i_1_n_0\,
      Q => phi_cnt(3),
      R => reset
    );
\phi_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[4]_i_1_n_0\,
      Q => phi_cnt(4),
      R => reset
    );
\phi_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phi_cnt_reg[4]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[4]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[4]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[4]_i_2_n_3\,
      CYINIT => phi_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(4 downto 1),
      S(3 downto 0) => phi_cnt(4 downto 1)
    );
\phi_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[5]_i_1_n_0\,
      Q => phi_cnt(5),
      R => reset
    );
\phi_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[6]_i_1_n_0\,
      Q => phi_cnt(6),
      R => reset
    );
\phi_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[7]_i_1_n_0\,
      Q => phi_cnt(7),
      R => reset
    );
\phi_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[8]_i_1_n_0\,
      Q => phi_cnt(8),
      R => reset
    );
\phi_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phi_cnt_reg[4]_i_2_n_0\,
      CO(3) => \phi_cnt_reg[8]_i_2_n_0\,
      CO(2) => \phi_cnt_reg[8]_i_2_n_1\,
      CO(1) => \phi_cnt_reg[8]_i_2_n_2\,
      CO(0) => \phi_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => phi_cnt0(8 downto 5),
      S(3 downto 0) => phi_cnt(8 downto 5)
    );
\phi_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \phi_cnt[9]_i_1_n_0\,
      Q => phi_cnt(9),
      R => reset
    );
rd_data_fifo: entity work.GPIOTest_GPIOInterface_0_0_fifo_2
     port map (
      D(15 downto 0) => w_data(15 downto 0),
      GPIOPortRd(17 downto 0) => GPIOPortRd(17 downto 0),
      GPIOPortWr(1 downto 0) => GPIOPortWr(18 downto 17),
      blClkOut(1 downto 0) => blClkOut(1 downto 0),
      clk => clk,
      fifo_reset => fifo_reset,
      full => full,
      reset_n => reset_n,
      wr => wr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_GPIOInterface_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GPIOTest_GPIOInterface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GPIOTest_GPIOInterface_0_0 : entity is "GPIOTest_GPIOInterface_0_0,GPIOInterface,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of GPIOTest_GPIOInterface_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of GPIOTest_GPIOInterface_0_0 : entity is "GPIOInterface,Vivado 2017.4";
end GPIOTest_GPIOInterface_0_0;

architecture STRUCTURE of GPIOTest_GPIOInterface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^gpioportrd\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gpioportwr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN GPIOTest_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
  GPIOPortRd(31 downto 29) <= \^gpioportrd\(31 downto 29);
  GPIOPortRd(28) <= \^gpioportwr\(26);
  GPIOPortRd(27) <= \<const0>\;
  GPIOPortRd(26) <= \<const0>\;
  GPIOPortRd(25) <= \<const0>\;
  GPIOPortRd(24) <= \<const0>\;
  GPIOPortRd(23) <= \<const0>\;
  GPIOPortRd(22) <= \<const0>\;
  GPIOPortRd(21) <= \<const0>\;
  GPIOPortRd(20) <= \<const0>\;
  GPIOPortRd(19) <= \<const0>\;
  GPIOPortRd(18) <= \<const0>\;
  GPIOPortRd(17) <= \<const0>\;
  GPIOPortRd(16) <= \<const0>\;
  GPIOPortRd(15 downto 0) <= \^gpioportrd\(15 downto 0);
  \^gpioportwr\(31 downto 28) <= GPIOPortWr(31 downto 28);
  \^gpioportwr\(26 downto 24) <= GPIOPortWr(26 downto 24);
  \^gpioportwr\(15 downto 12) <= GPIOPortWr(15 downto 12);
  \^gpioportwr\(10 downto 0) <= GPIOPortWr(10 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.GPIOTest_GPIOInterface_0_0_GPIOInterface
     port map (
      DIn(7 downto 0) => DIn(7 downto 0),
      DOut(7 downto 0) => DOut(7 downto 0),
      GPIOPortRd(18 downto 16) => \^gpioportrd\(31 downto 29),
      GPIOPortRd(15 downto 0) => \^gpioportrd\(15 downto 0),
      GPIOPortWr(21 downto 18) => \^gpioportwr\(31 downto 28),
      GPIOPortWr(17 downto 15) => \^gpioportwr\(26 downto 24),
      GPIOPortWr(14 downto 11) => \^gpioportwr\(15 downto 12),
      GPIOPortWr(10 downto 0) => \^gpioportwr\(10 downto 0),
      MUX(2 downto 0) => MUX(2 downto 0),
      SEL => SEL,
      clk => clk,
      nen_adh => nen_adh,
      nen_adl => nen_adl,
      nen_ctrl0 => nen_ctrl0,
      nen_idb => nen_idb,
      phi1 => phi1,
      phi2 => phi2,
      reset_n => reset_n
    );
end STRUCTURE;
