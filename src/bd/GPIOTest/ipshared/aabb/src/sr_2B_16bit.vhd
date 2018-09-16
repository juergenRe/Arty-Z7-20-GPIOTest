----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:31 12/13/2015 
-- Design Name: 
-- Module Name:    sr_4B_32bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sr_2B_16bit is
	port (
		reset					: in std_logic;		-- active high sync reset
		clk						: in std_logic;
		enable					: in std_logic;		-- clock in parallel data
		data_in					: in std_logic_vector (7 downto 0);
		data_out				: out std_logic_vector (15 downto 0)
	);
end sr_2B_16bit;

architecture Behavioral of sr_2B_16bit is
	--4 stage shift register type and signals
	type   sr2by8 is array (0 to 1) of std_logic_vector(7 downto 0);
	signal data_sr_content : sr2by8;   				-- holds contents of data sr

	signal d_out 		: std_logic_vector (31 downto 0);
--	signal d_internal   : std_logic_vector(7 downto 0);
	-- Small delay for simulation purposes.
	constant dly : time := 1 ps;
	
begin
--    d_internal <= data_in or "00000000";
	------------------------------------------------------------------------------
	--Process p_data_sr
	--A four stage shift register to hold 4 bytes of incoming data.
	--the actual content will be mapped to the output, no start signal
	------------------------------------------------------------------------------
	p_data_sr : process(clk, reset, enable)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				data_sr_content(0) <= (others => '0');
				data_sr_content(1) <= (others => '0');
			else
			    if enable = '1' then
    				data_sr_content <= data_in & data_sr_content (0 to 0);
    		    end if;
			end if;
		end if;
	end process p_data_sr;

--	------------------------------------------------------------------------------
--	--Process p_data_out_reg
--	--Registers data output
--	------------------------------------------------------------------------------
--	p_data_out_reg : process(clk, reset)
--	begin
--		if rising_edge(clk) then
--			if reset = '1' then
--				d_out <= (others => '0');
--			else
--				d_out(7 downto 0) <= data_sr_content(0) after dly;
--				d_out(15 downto 8) <= data_sr_content(1) after dly;
--			end if;
--		end if;
--	end process p_data_out_reg;

--	data_out <= d_out;
	data_out <= data_sr_content(1) & data_sr_content(0);
	
end Behavioral;

