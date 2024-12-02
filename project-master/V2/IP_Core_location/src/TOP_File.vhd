----------------------------------------------------------------------------------
-- Company: OTH Regensburg
-- Engineer: Benedikt Gareis
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
-- Revision 1.0
-- Additional Comments:
-- Checked complete function on 20.01.2024
-- Cleanup done
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity Project is
  Port ( 
        --enable  : in std_logic;
        --AXI conform IO
        aclk    : in std_logic;
        aresetn : in std_logic;
        s0_axis_tdata : in std_logic_vector(23 downto 0);
        s0_axis_tvalid : in std_logic;
        s0_axis_tready : out std_logic;

		--output
		LED_OUT		: out std_logic--;
		
		--testing
		--LED_EN_OUT		: out std_logic
        );

end Project;

architecture Behavioral of Project is

signal prescale_value1 : unsigned(15 downto 0) := x"007D"; --100MHz/125 = 800kHz
signal prescale_value2 : unsigned(15 downto 0) := x"002A"; --100MHz/42 = 2.380kHz

signal clk_en_800k_sig : STD_LOGIC;
signal clk_en_2M4_sig : STD_LOGIC;
--signal clk_en_60_sig : STD_LOGIC;

-- to lazy to redo reset logic. AXI is nreset
signal reset : std_logic ;

--AXI DMA
signal s0_axis_tready_sig : STD_LOGIC;
signal s0_axis_tdata_sig : std_logic_vector(23 downto 0) := s0_axis_tdata;
signal s0_axis_tvalid_sig : STD_LOGIC := s0_axis_tvalid;

--enable signal
signal enable_sig : std_logic := '1';

--output signal
signal LED_OUT_sig : std_logic;

--from send to shift
signal sending_ready_sig : STD_LOGIC;

--from shift to send 
signal shift_out_send_in_data_sig : std_logic;
signal send_valid_shift_outvalid_sig : std_logic;

--from send to demux
signal send_out_demux_in_data_sig : std_logic;



begin

    -- 800 kHz => used as output frequency for each logic BIT
    Clk_en_800kHz : entity work.Prescaler_1 port map(
        clk_in			=> aclk,
        prescale_value	=> prescale_value1,
        clk_out			=> clk_en_800k_sig,
        reset			=> reset,
        enable			=> enable_sig      
    );
    -- 2.40 MHz => 3x800k used as output frequency for each transmission BIT    
    Clk_en_2400kHz : entity work.Prescaler_1 port map(
        clk_in			=> aclk,
        prescale_value	=> prescale_value2,
        clk_out			=> clk_en_2M4_sig,
        reset			=> reset,
        enable			=> enable_sig        
    );
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
    
    --way to lazy
    reset <= not aresetn;
    
    --to DMA
    s0_axis_tready <= s0_axis_tready_sig; 

    --general output
	LED_OUT <= LED_OUT_sig;
    --LED_EN_OUT <= clk_en_2M4_sig;
    
end Behavioral;