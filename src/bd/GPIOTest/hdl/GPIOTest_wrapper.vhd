--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Tue Dec 17 14:00:38 2019
--Host        : CHGFN1A945754 running 64-bit major release  (build 9200)
--Command     : generate_target GPIOTest_wrapper.bd
--Design      : GPIOTest_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GPIOTest_wrapper is
  port (
    BTN_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DI_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DO_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    MUX_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SEL_0 : out STD_LOGIC;
    nen_adh_0 : out STD_LOGIC;
    nen_adl_0 : out STD_LOGIC;
    nen_ctrl0_0 : out STD_LOGIC;
    nen_idb_0 : out STD_LOGIC;
    phi1_0 : out STD_LOGIC;
    phi2_0 : out STD_LOGIC
  );
end GPIOTest_wrapper;

architecture STRUCTURE of GPIOTest_wrapper is
  component GPIOTest is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    LED_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BTN_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DO_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    MUX_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SEL_0 : out STD_LOGIC;
    nen_ctrl0_0 : out STD_LOGIC;
    nen_idb_0 : out STD_LOGIC;
    nen_adl_0 : out STD_LOGIC;
    nen_adh_0 : out STD_LOGIC;
    phi1_0 : out STD_LOGIC;
    phi2_0 : out STD_LOGIC
  );
  end component GPIOTest;
begin
GPIOTest_i: component GPIOTest
     port map (
      BTN_tri_i(3 downto 0) => BTN_tri_i(3 downto 0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      DI_0(7 downto 0) => DI_0(7 downto 0),
      DO_0(7 downto 0) => DO_0(7 downto 0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LED_tri_o(3 downto 0) => LED_tri_o(3 downto 0),
      MUX_0(2 downto 0) => MUX_0(2 downto 0),
      SEL_0 => SEL_0,
      nen_adh_0 => nen_adh_0,
      nen_adl_0 => nen_adl_0,
      nen_ctrl0_0 => nen_ctrl0_0,
      nen_idb_0 => nen_idb_0,
      phi1_0 => phi1_0,
      phi2_0 => phi2_0
    );
end STRUCTURE;
