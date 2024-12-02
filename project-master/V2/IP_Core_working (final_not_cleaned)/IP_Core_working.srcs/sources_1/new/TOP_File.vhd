----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2023 04:17:32 PM
-- Design Name: 
-- Module Name: Project_1 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Project is
  Port ( 
        --reset   : in std_logic; --todo reset to resetn
        enable  : in std_logic;
		
        --AXI conform
        aclk    : in std_logic;
        aresetn : in std_logic;
        s0_axis_tdata : in std_logic_vector(23 downto 0);
        s0_axis_tvalid : in std_logic;
        s0_axis_tready : out std_logic;
        
        ----DMA
        --data_in     : in std_logic_vector(23 downto 0);
        --data_valid  : in std_logic;
        --DMA_ready   : out std_logic;
        
		--output
		LED_OUT		: out std_logic
		
        --channel     : in std_logic_vector(1 downto 0);--obsolete
        
        --out_all     : out std_logic_vector(3 downto 0);
        --out_ch1     : out std_logic;
        --out_ch2     : out std_logic;
        --out_ch3     : out std_logic;
        --out_ch4     : out std_logic;
        --out_pre1    : out std_logic;--800kHz
        --out_pre2    : out std_logic;--2400kHz
        --out_pre3    : out std_logic;--60Hz
        --send_output_data:out std_logic; --testing purpose
        --shift_output_data:out std_logic --testing purpose
        );

end Project;

architecture Behavioral of Project is

signal prescale_value1 : unsigned(15 downto 0) := x"007D"; --100MHz/125 = 800kHz
signal prescale_value2 : unsigned(15 downto 0) := x"002A"; --100MHz/42 = 2.380kHz
--signal prescale_value3 : unsigned(15 downto 0) := x"3415"; --800kHz/13333 = 60.001Hz

signal clk_en_800k_sig : STD_LOGIC;
signal clk_en_2M4_sig : STD_LOGIC;
--signal clk_en_60_sig : STD_LOGIC;

--lazy
signal reset : std_logic ;

--AXI DMA
signal s0_axis_tready_sig : STD_LOGIC;
signal s0_axis_tdata_sig : std_logic_vector(23 downto 0) := s0_axis_tdata;
signal s0_axis_tvalid_sig : STD_LOGIC := s0_axis_tvalid;


--to be deceided what to use
signal LED_OUT_sig : std_logic;

--from send to shift
signal sending_ready_sig : STD_LOGIC;
--from shift to send 
signal shift_out_send_in_data_sig : std_logic;
signal send_valid_shift_outvalid_sig : std_logic;

--from send to demux
signal send_out_demux_in_data_sig : std_logic;

begin

    -- 800 kHz => used as output frequency for each state (HIGH or LOW)
    Clk_en_800kHz : entity work.Prescaler_1 port map(
        clk_in			=> aclk,
        prescale_value	=> prescale_value1,
        clk_out			=> clk_en_800k_sig,
        reset			=> reset,
        enable			=> enable        
    );
    -- 2.40 MHz => 3x800k used as output frequency for each BIT    
    Clk_en_2400kHz : entity work.Prescaler_1 port map(
        clk_in			=> aclk,
        prescale_value	=> prescale_value2,
        clk_out			=> clk_en_2M4_sig,
        reset			=> reset,
        enable			=> enable        
    );
    -- not needed
    --Clk_en_60Hz : entity work.Prescaler_1 port map(
    --    clk_in			=> aclk,
    --    prescale_value	=> prescale_value3,
    --    clk_out			=> clk_en_60_sig,
    --    reset			=> reset,
    --    enable			=> enable        
    --);
        --sending 3 times faster than shifting
    send : entity work.sending port map(
        clk_in			=> aclk,
        clk_en			=> clk_en_2M4_sig,
        input_valid 	=> send_valid_shift_outvalid_sig,
        input_data		=> shift_out_send_in_data_sig,
		output_data 	=> LED_OUT_sig,
        --output_data 	=> send_out_demux_in_data_sig,
		input_ready 	=> sending_ready_sig,
        reset			=> reset
    );
    --800kHz
    shift : entity work.shift_register_x24 port map(
        clk_in 			=> aclk,
        clk_en 			=> clk_en_800k_sig,
        input_valid     => s0_axis_tvalid, -- from DMA
        input_data 	    => s0_axis_tdata,  -- from DMA
        input_ready 	=> s0_axis_tready_sig, -- to DMA
        output_ready 	=> sending_ready_sig,
        output_valid    => send_valid_shift_outvalid_sig,
        output_data	=> shift_out_send_in_data_sig,
        reset 			=> reset
    );
	--obsolete
    -- with 60Hz change rate between the possible change of channel
    --Channel_Select : entity work.Demux_x4 port map(
    --    clk_in			=> aclk,
    --    clk_en 			=> clk_en_60_sig,
    --    IN_A				=> send_out_demux_in_data_sig,
    --    SEL				=> Channel_out_SEL_sig,
    --    OUT_VEC			=> data_receiveVEC,
    --    OUT_A 			=> data_receiveA,
    --    OUT_B				=> data_receiveB,
    --    OUT_C 			=> data_receiveC,
    --    OUT_D 			=> data_receiveD,
    --    reset 			=> reset
    --);
    
    --way to lazy
    reset <= not aresetn;
    
    
    s0_axis_tready <= s0_axis_tready_sig; --to DMA
    
    --For testing, timers on output:
    --out_pre1 <= clk_en_800k_sig;
    --out_pre2 <= clk_en_2M4_sig;
    --out_pre3 <= clk_en_60_sig;
    
    --For testing, sending output
    --send_output_data  <= send_out_demux_in_data_sig;
    --shift_output_data <= shift_out_send_in_data_sig;
    
    --not sure what to use
	LED_OUT <= LED_OUT_sig;
    --out_all <= data_receiveVEC;
    --out_ch1 <= data_receiveA;
    --out_ch2 <= data_receiveB;
    --out_ch3 <= data_receiveC;
    --out_ch4 <= data_receiveD;
    
end Behavioral;