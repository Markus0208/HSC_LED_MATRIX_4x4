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
        clk     : in STD_LOGIC;
        reset   : in STD_LOGIC;
        enable  : in STD_LOGIC;
        data_in : in std_logic_vector(23 downto 0);
        data_valid : in STD_LOGIC;
        channel : in std_logic_vector(1 downto 0);
        out_all : out std_logic_vector(3 downto 0);
        out_ch1 : out std_logic;
        out_ch2 : out std_logic;
        out_ch3 : out std_logic;
        out_ch4 : out std_logic;
        out_pre1: out std_logic;--2.4MHz
        out_pre2: out std_logic;--800MHz
        out_pre3: out std_logic --60Hz
        );

end Project;


architecture Behavioral of Project is

signal prescale_value1 : unsigned(15 downto 0) := x"007D"; --100MHz/125 = 800kHz
signal prescale_value2 : unsigned(15 downto 0) := x"002A"; --100MHz/42 = 2.380kHz
signal prescale_value3 : unsigned(15 downto 0) := x"3415"; --800kHz/13333 = 60.001Hz

signal enable_800k : STD_LOGIC;
signal enable_2M4 : STD_LOGIC;
signal enable_60 : STD_LOGIC;

--signal data_valid : STD_LOGIC := '1';

--temporary signals
signal sending_test : std_logic := '0';
signal data_send : std_logic_vector(23 downto 0) := data_in;
signal data_receiveVEC : std_logic_vector(3 downto 0) := "1111";  
signal data_receiveA : std_logic := '1';
signal data_receiveB : std_logic := '1';
signal data_receiveC : std_logic := '1';
signal data_receiveD : std_logic := '1';



signal SEL_OUT : std_logic_vector(1 downto 0) := channel;

signal send_out_test : std_logic;
signal send_in_test : std_logic;


begin

-- 800 kHz => used as output frequency for each state (HIGH or LOW)
    pre1 : entity work.Prescaler_1 port map(
        clk_in => clk,
        prescale_value => prescale_value1,
        clk_out => enable_800k,
        reset => reset,
        enable => enable        
    );
-- 2.40 MHz => 3x800k used as output frequency for each BIT    
    pre2 : entity work.Prescaler_1 port map(
        clk_in => clk,
        prescale_value => prescale_value2,
        clk_out => enable_2M4,
        reset => reset,
        enable => enable        
    );
    
    pre3 : entity work.Prescaler_1 port map(
        clk_in => clk,
        prescale_value => prescale_value3,
        clk_out => enable_60,
        reset => reset,
        enable => enable        
    );
        
    send : entity work.sending port map(
        clk_in => clk,
        clk_en => enable_2M4,
        data_valid => data_valid,
        send_in => send_out_test,
        send_out => send_in_test,
        reset => reset,
        testing => sending_test
    );
    
    shift : entity work.shift_register_x24 port map(
        clk_in => clk,
        enable => enable_800k,
        parallel_input => data_send,
        serial_output => send_out_test,
        reset => reset
    );
    
    demux1 : entity work.Demux_x4 port map(
        clk_in => clk,
        clk_en => enable_800k,
        IN_A => send_in_test,
        SEL => SEL_OUT,
        OUT_VEC => data_receiveVEC,
        OUT_A => data_receiveA,
        OUT_B => data_receiveB,
        OUT_C => data_receiveC,
        OUT_D => data_receiveD,
        reset => reset
    );
    
   --Testing:
   out_pre1 <= enable_800k;
   out_pre2 <= enable_2M4;
   out_pre3 <= enable_60;
   
   --not sure what to use
   out_all <= data_receiveVEC;
   out_ch1 <= data_receiveA;
   out_ch2 <= data_receiveB;
   out_ch3 <= data_receiveC;
   out_ch4 <= data_receiveD;
    
end Behavioral;