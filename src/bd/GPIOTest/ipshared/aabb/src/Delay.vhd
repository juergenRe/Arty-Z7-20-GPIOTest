----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.09.2018 12:19:27
-- Design Name: 
-- Module Name: Delay - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Delay is
    generic(
        DELAYCNT:   integer := 4
    );
    port(
        clk:        in std_logic;
        sig_in :    in std_logic;
        sig_out:    out std_logic
    );
end Delay;

architecture Behavioral of Delay is
    signal tmp: std_logic_vector(DELAYCNT downto 0);
begin
    process (clk)
    begin
        if (clk'event and clk='1') then
            for i in 0 to DELAYCNT-1 loop
                tmp(i+1) <= tmp(i);
            end loop;
            tmp(0) <= sig_in;
        end if;
    end process;
    sig_out <= tmp(DELAYCNT);
end Behavioral;
