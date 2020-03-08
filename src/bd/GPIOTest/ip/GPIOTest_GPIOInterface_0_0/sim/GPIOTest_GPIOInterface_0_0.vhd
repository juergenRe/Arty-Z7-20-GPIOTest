-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: Rej:user:GPIOInterface:1.1
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY GPIOTest_GPIOInterface_0_0 IS
  PORT (
    GPIOPortWr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    GPIOPortRd : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    reset_n : IN STD_LOGIC;
    DIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    DOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    MUX : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    SEL : OUT STD_LOGIC;
    nen_ctrl0 : OUT STD_LOGIC;
    nen_idb : OUT STD_LOGIC;
    nen_adl : OUT STD_LOGIC;
    nen_adh : OUT STD_LOGIC;
    phi1 : OUT STD_LOGIC;
    phi2 : OUT STD_LOGIC
  );
END GPIOTest_GPIOInterface_0_0;

ARCHITECTURE GPIOTest_GPIOInterface_0_0_arch OF GPIOTest_GPIOInterface_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF GPIOTest_GPIOInterface_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT GPIOInterface IS
    PORT (
      GPIOPortWr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPIOPortRd : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      clk : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      DIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      DOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      MUX : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      SEL : OUT STD_LOGIC;
      nen_ctrl0 : OUT STD_LOGIC;
      nen_idb : OUT STD_LOGIC;
      nen_adl : OUT STD_LOGIC;
      nen_adh : OUT STD_LOGIC;
      phi1 : OUT STD_LOGIC;
      phi2 : OUT STD_LOGIC
    );
  END COMPONENT GPIOInterface;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_n: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN GPIOTest_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : GPIOInterface
    PORT MAP (
      GPIOPortWr => GPIOPortWr,
      GPIOPortRd => GPIOPortRd,
      clk => clk,
      reset_n => reset_n,
      DIn => DIn,
      DOut => DOut,
      MUX => MUX,
      SEL => SEL,
      nen_ctrl0 => nen_ctrl0,
      nen_idb => nen_idb,
      nen_adl => nen_adl,
      nen_adh => nen_adh,
      phi1 => phi1,
      phi2 => phi2
    );
END GPIOTest_GPIOInterface_0_0_arch;
