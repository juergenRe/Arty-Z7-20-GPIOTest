----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.08.2018 20:48:08
-- Design Name: 
-- Module Name: GPIOInterface - Behavioral
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

----------------------------------------------------
-- Input data definition
-- GPIOPortWr(31)    Enable      Global enable of inerface
-- GPIOPortWr(30)    Execute     Execute contents of CMD FIFO on falling edge
-- GPIOPortWr(29)    Read        Execute Read cyle on falling edge
-- GPIOPortWr(28)    Reset       Reset circuitry    
-- GPIOPortWr(27)
-- GPIOPortWr(26)    RdEnable    Put Out FIFO data on bus
-- GPIOPortWr(25)    FIFOOutClk  Output next data on falling edge (Out FIFO)
-- GPIOPortWr(24)    FIFOInClk   Clock in data on falling edge (In FIFO)
-- GPIOPortWr(15:0)  Data        data word for InFIFO
--
-- Output data definition
-- GPIOPortRd(31)    Running     Cmd FIFO contents being processed
-- GPIOPortRd(30)    NotEmpty    Out FIFO has data
-- GPIOPortRd(29)    Error       Error occured
-- GPIOPortRd(28)    RdEnaAck    Read data available on bus
-- GPIOPortRd(15:0)  Data        data word from Out FIFO
----------------------------------------------------

entity GPIOInterface is
Port(
    -- AXI side interface
    GPIOPortWr: in std_logic_vector(31 downto 0);
    GPIOPortRd: out std_logic_vector(31 downto 0);
    clk:        in std_logic;
    reset:      in std_logic;
    -- GPIO interface
    DIn:        in std_logic_vector(7 downto 0);
    DOut:       out std_logic_vector(7 downto 0);
    MUX:        out std_logic_vector(2 downto 0);
    SEL:        out std_logic;
    nen_ctrl0:  out std_logic;
    nen_idb:    out std_logic;
    nen_adl:    out std_logic;
    nen_adh:    out std_logic;
    phi1:       out std_logic;
    phi2:       out std_logic
);
end GPIOInterface;

architecture Behavioral of GPIOInterface is
constant THigh:         integer := 46;      -- high time of phi in counts of base clock
constant TDelay:        integer := 2;       -- delay between phi1/phi2
constant TDOut:         integer := 2;       -- delay between internal external phi

constant TRdDelay:      integer := 20;      -- delay after defined phi1/2 rising edge for reading data from DIn

constant DB_MAX:        integer := 16;      -- number of data bit for in/out transfer
-- bit definitions for input data
constant BitEnable:     integer := 31;      -- bit for global enable
constant BitExecute:    integer := 30;      -- bit for executing FIFO sequence
constant BitReadDta:    integer := 29;      -- bit for performing read
constant BitReset:      integer := 28;      -- bit for performing reset
constant BitRdEna:      integer := 26;      -- bit for Out FIFO read enable
constant BitClkOut:     integer := 25;      -- bit for FIFO out read clock
constant BitClkIn:      integer := 24;      -- bit for FIFO in write clk
-- bit definitions for input data
constant BitRunning:    integer := 31;      -- bit indicating execution under way
constant BitNotEmpty:   integer := 30;      -- bit indicating Out FIFO not empty
constant BitError:      integer := 29;      -- bit indicating error condition
constant BitRdEnaAck:   integer := 28;      -- bit indicating acknowledge of read enable

constant cmd_W:         natural := 16;
constant BitEdgP1On:    natural := 14;      -- edge definition bits
constant BitEdgP2On:    natural := 16;
constant BitEdgP1Typ:   natural := 13;
constant BitEdgP2Typ:   natural := 15;

type pst_States is (pst_P1, pst_P1_P2, pst_P2, pst_P2_P1);
signal phiState:        pst_States; 
signal phi_cnt:         integer := 0;
signal phi_1_int:       std_logic;
signal phi_2_int:       std_logic;
signal phi_1_int_d:     std_logic;
signal phi_2_int_d:     std_logic;
signal phi_edges:       std_logic_vector(3 downto 0);

-- execution states
type exeStateType is (exeDisable, exeRdy, exeLdFifo, exeRun);
signal  exeStateReg:    exeStateType;
signal  exeStateNxt:    exeStateType;
type bitLoadType is (blIdle, blActive, blTrg);
signal blEna:           bitLoadType;
signal blExc:           bitLoadType;
signal blClkIn:         bitLoadType;
signal blClkOut:        bitLoadType;
signal blRdData:        bitLoadType;
signal ExcTick:         std_logic;
signal ClkInTick:       std_logic;
signal ClkOutTick:      std_logic;
signal execState:       std_logic;
signal error:           std_logic;

-- in fifo related signals
signal fifo_reset:      std_logic := '0';
signal fifo_rd:         std_logic := '0';
signal fifo_wr:         std_logic := '0';
signal fifo_empty:      std_logic;
signal fifo_full:       std_logic;
signal cmd_data:        std_logic_vector(cmd_W-1 downto 0) := (others => '0');
signal cmd_data_rd:     std_logic_vector(cmd_W-1 downto 0);
signal exec_ena:        std_logic := '0';
type fifo_states is (f_read, f_out, f_sel, f_rd_chk, f_idle);
signal fifoState:       fifo_states;
signal edges:           std_logic_vector(3 downto 0);

-- in fifo related signals
signal out_fifo_rd:     std_logic := '0';
signal out_fifo_wr:     std_logic := '0';
signal out_fifo_empty:  std_logic;
signal out_fifo_full:   std_logic;
signal rd_data:         std_logic_vector(cmd_W-1 downto 0) := (others => '0');
signal out_data:        std_logic_vector(cmd_W-1 downto 0);

-- signals for reading input
type typ_rd_states is (rds_idle, rds_idb, rds_adl, rds_adh, rds_rdy);
signal rdState:         typ_rd_states;
signal RdDataTick:      std_logic;
signal data_ena:        std_logic;
--signal rdDataLong:      std_logic_vector(31 downto 0);

component fifo
    generic(
        B:      natural:=8; -- number of bits
        W:      natural:=4 -- number of address bits
    );
    port(
        clk:    in std_logic;
        reset:  in std_logic;
        rd:     in std_logic;
        wr:     in std_logic;
        w_data: in std_logic_vector (B-1 downto 0);
        r_data: out std_logic_vector (B-1 downto 0);
        empty:  out std_logic; 
        full:   out std_logic
    );
end component;

component EdgeDetect
	port(
		clk			: in std_logic;
		reset		: in std_logic;
		level		: in std_logic;
		tick_rise	: out std_logic;
		tick_fall	: out std_logic
	);
end component;

component Delay
    generic(
        DELAYCNT:   integer
    );
    port(
        clk:        in std_logic;
        sig_in :    in std_logic;
        sig_out:    out std_logic
    );
end component;

--component sr_4B_32bit is
--	port (
--		reset					: in std_logic;		-- active high sync reset
--		clk						: in std_logic;
--		enable					: in std_logic;		-- clock in parallel data
--		data_in					: in std_logic_vector (7 downto 0);
--		data_out				: out std_logic_vector (31 downto 0)
--	);
--end component;

component sr_2B_16bit is
	port (
		reset					: in std_logic;		-- active high sync reset
		clk						: in std_logic;
		enable					: in std_logic;		-- clock in parallel data
		data_in					: in std_logic_vector (7 downto 0);
		data_out				: out std_logic_vector (15 downto 0)
	);
end component;

begin
    cmd_fifo: fifo
    generic map(
        B           => cmd_W,
        W           => 4        -- 16 entries => 8 read entries
    )
    port map(
        clk         => clk,
        reset       => fifo_reset,
        rd          => fifo_rd,
        wr          => fifo_wr,
        w_data      => cmd_data,
        r_data      => cmd_data_rd,
        empty       => fifo_empty,
        full        => fifo_full
    );
    
    cmd_data <= GPIOPortWr(cmd_W-1 downto 0);         -- Edge, MUX and CI fields
    fifo_wr <= ClkInTick;
    fifo_reset <= reset;
        
    phi_clk: process(clk)
    begin
       if rising_edge(clk) then
           if reset = '1' then
               phi_cnt <= 0;
           else
               phi_cnt <= phi_cnt +1;
               case phiState is
                   when pst_P1 =>
                       if phi_cnt >= THigh then
                           phiState <= pst_P1_P2;
                           phi_cnt <= 0;
                       end if;
                    when pst_P1_P2 =>
                        if phi_cnt >= TDelay then
                            phiState <= pst_P2;
                            phi_cnt <= 0;
                        end if;
                    when pst_P2 =>             
                        if phi_cnt >= THigh then
                            phiState <= pst_P2_P1;
                            phi_cnt <= 0;
                        end if;
                    when pst_P2_P1 =>
                        if phi_cnt >= TDelay then
                            phiState <= pst_P1;
                            phi_cnt <= 0;
                        end if;
               end case;
           end if;
       end if;
    end process;
    
    phi_1_int <= '1' when phiState = pst_P1 else '0';
    phi_2_int <= '1' when phiState = pst_P2 else '0';

    dly_phi1: Delay
    generic map(
        DELAYCNT    => TDOut
    )
    port map(
        clk         => clk,
        sig_in      => phi_1_int,
        sig_out     => phi_1_int_d
    );
    
    dly_phi2: Delay
    generic map(
        DELAYCNT    => TDOut
    )
    port map(
        clk         => clk,
        sig_in      => phi_2_int,
        sig_out     => phi_2_int_d
    );
    
    phi1 <= phi_1_int_d;
    phi2 <= phi_2_int_d;
    
    p1_edges: EdgeDetect
 	port map(
        clk          => clk,
        reset        => reset,
        level        => phi_1_int,
        tick_rise    => phi_edges(0),
        tick_fall    => phi_edges(1)
    );
   
    p2_edges: EdgeDetect
     port map(
        clk          => clk,
        reset        => reset,
        level        => phi_2_int,
        tick_rise    => phi_edges(2),
        tick_fall    => phi_edges(3)
    );
   
	-- check for new data to process on AXI_WR port (indicated by BitExecute)
	-- a trigger will be generated on the falling edge of that bit
	axi_poll_exc: process(clk)
	begin
	   if rising_edge(clk) then
	       if reset = '1' or GPIOPortWr(BitEnable) = '0' then
	           blExc <= blIdle;
	       else
	           case blExc is
	               when blIdle =>
	                   if GPIOPortWr(BitExecute) = '1' then
	                       blExc <= blActive;
	                   end if;
	               when blActive =>
	                   if GPIOPortWr(BitExecute) = '0' then
                           blExc <= blTrg;
                       end if;
	               when blTrg =>
	                   blExc <= blIdle;
	           end case;
	       end if;
	   end if;
	end process axi_poll_exc;
	ExcTick <= '1' when blExc = blTrg else '0';
	
	-- poll load FIFO bit and generate a trigger
	axi_poll_clkin: process(clk)
    begin
       if rising_edge(clk) then
           if reset = '1' or GPIOPortWr(BitEnable) = '0' then
               blClkIn <= blIdle;
           else
               case blClkIn is
                   when blIdle =>
                       if GPIOPortWr(BitClkIn) = '1' then
                           blClkIn <= blActive;
                       end if;
                   when blActive =>
                       if GPIOPortWr(BitClkIn) = '0' then
                           blClkIn <= blTrg;
                       end if;
                   when blTrg =>
                       blClkIn <= blIdle;
               end case;
           end if;
       end if;
    end process axi_poll_clkin;
	ClkInTick <= '1' when blClkIn = blTrg else '0';
    
	-- poll load FIFO out bit and generate a trigger
    axi_poll_clkout: process(clk)
    begin
       if rising_edge(clk) then
           if reset = '1' or GPIOPortWr(BitEnable) = '0' then
               blClkOut <= blIdle;
           else
               case blClkOut is
                   when blIdle =>
                       if GPIOPortWr(BitClkOut) = '1' then
                           blClkOut <= blActive;
                       end if;
                   when blActive =>
                       if GPIOPortWr(BitClkOut) = '0' then
                           blClkOut <= blTrg;
                       end if;
                   when blTrg =>
                       blClkOut <= blIdle;
               end case;
           end if;
       end if;
    end process axi_poll_clkout;
    ClkOutTick <= '1' when blClkOut = blTrg else '0';
    
	-- poll bit loading process data and generate a trigger
    axi_poll_rddata: process(clk)
    begin
       if rising_edge(clk) then
           if reset = '1' or GPIOPortWr(BitEnable) = '0' then
               blRdData <= blIdle;
           else
               case blRdData is
                   when blIdle =>
                       if GPIOPortWr(BitReadDta) = '1' then
                           blRdData <= blActive;
                       end if;
                   when blActive =>
                       if GPIOPortWr(BitReadDta) = '0' then
                           blRdData <= blTrg;
                       end if;
                   when blTrg =>
                       blRdData <= blIdle;
               end case;
           end if;
       end if;
    end process axi_poll_rddata;
    RdDataTick <= '1' when blRdData = blTrg else '0';
    
    
	-- take entry from fifo and transfer it
	fifo_exe: process(clk)
    begin
        if rising_edge(clk) then
            if fifo_reset = '1' then
                fifoState <= f_idle;
                DOut <= (others => '0');
                MUX <= (others => '0');
                edges <= (others => '0');
                SEL <= '0';
            else
                case fifoState is
                    when f_idle =>
                        if ExcTick = '1' then
                            fifoState <= f_rd_chk;
                        end if;
                    when f_rd_chk =>
                        fifo_rd <= '0';
                        if fifo_empty = '1' then
                            fifoState <= f_idle;
                        else
                           fifoState <= f_sel;
                           DOut <= cmd_data_rd(7 downto 0);
                           MUX <= cmd_data_rd(10 downto 8);
                           edges <= cmd_data_rd(15 downto 12);
                           fifo_rd <= '1';
                        end if;
                    when f_sel =>
                        fifo_rd <= '0';
                        fifoState <= f_sel;
                        SEL <= '0';
                        if (edges and "1010") = "0000" then
                            SEL <= '1';
                            fifoState <= f_out;
                        else
                            if edges(1) = '1' then  -- phi1 edges checking
                                if (edges(0) = '1' and phi_edges(0) = '1') or (edges(0) = '0' and phi_edges(1) = '1') then
                                    SEL <= '1';
                                    fifoState <= f_out;
                                end if;
                            elsif edges(3) = '1' then  -- phi2 edges checking
                                if (edges(2) = '1' and phi_edges(2) = '1') or (edges(2) = '0' and phi_edges(3) = '1') then
                                    SEL <= '1';
                                    fifoState <= f_out;
                                end if;
                            end if; 
                        end if;
                    when f_out =>
                        SEL <= '0';
                        fifoState <= f_read;
                    when f_read => 
                        fifoState <= f_rd_chk;
                end case;
            end if;
        end if;
    end process;
    execState <= '0' when fifoState = f_idle else '1';
    
    -- read 4 input bytes
    rdBytes: process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                rdState <= rds_idle;
                nen_idb <= '1';
                nen_adl <= '1';
                nen_adh <= '1';
                nen_ctrl0 <= '1';
                data_ena <= '0';
            else
                nen_idb <= '1';
                nen_adl <= '1';
                nen_adh <= '1';
                nen_ctrl0 <= '1';
                data_ena <= '0';
                out_fifo_wr <= '0';
                case rdState is
                    when rds_idle =>
                        if RdDataTick = '1' then
                            nen_idb <= '0';
                            rdState <= rds_idb;
                            data_ena <= '1';
                        end if;
                    when rds_idb =>
                        nen_adl <= '0';
                        rdState <= rds_adl;
                        data_ena <= '1';
                    when rds_adl =>
                        nen_adh <= '0';
                        rdState <= rds_adh;
                        data_ena <= '1';
                        out_fifo_wr <= '1';
                    when rds_adh =>
                        nen_ctrl0 <= '0';
                        rdState <= rds_rdy;
                        data_ena <= '1';
                    when rds_rdy =>
                        rdState <= rds_idle;
                        data_ena <= '0';
                        out_fifo_wr <= '1';
                end case;
            end if;
        end if;
    end process;

    byte_2_word: sr_2B_16bit 
    	port map (
        reset         => reset,     
        clk           => clk,
        enable        => data_ena,
        data_in       => DIn,
        data_out      => rd_data
    );

    rd_data_fifo: fifo
    generic map(
        B           => cmd_W,
        W           => 4
    )
    port map(
        clk         => clk,
        reset       => fifo_reset,
        rd          => out_fifo_rd,
        wr          => out_fifo_wr,
        w_data      => rd_data,
        r_data      => out_data,
        empty       => out_fifo_empty,
        full        => out_fifo_full
    );
    out_fifo_rd <= ClkOutTick;
    
    error <= fifo_full or out_fifo_full;
    
    -- output internal states back to GPIO interface
    GPIOPortRd(BitRunning) <= execState;
    GPIOPortRd(BitNotEmpty) <= not out_fifo_empty;
    GPIOPortRd(BitError) <= error;
    GPIOPortRd(BitRdEnaAck) <= GPIOPortWr(BitRdEna);
    GPIOPortRd(BitRdEnaAck-1 downto CMD_W) <= (others => '0');
    GPIOPortRd(CMD_W-1 downto 0) <= out_data when GPIOPortWr(BitRdEna) = '1' else (others => '0');
    
end Behavioral;
