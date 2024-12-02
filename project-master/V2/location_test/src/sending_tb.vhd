----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/19/2023 09:13:37 PM
-- Design Name: 
-- Module Name: sending_tb - Behavioral
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

-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity sending_tb is
end;

architecture bench of sending_tb is

  component sending
      Port ( 
             clk_in : in STD_LOGIC;
             clk_en: in STD_LOGIC;
             reset : in STD_LOGIC;
             data_valid : in STD_LOGIC;
             send_out : out STD_LOGIC;
             send_in : in STD_LOGIC;
             testing : out STD_LOGIC;
             test_count : out std_logic_vector(1 downto 0)
             );
  end component;

  signal clk_in: STD_LOGIC;
  signal clk_en: STD_LOGIC := '0';
  signal reset: STD_LOGIC;
  signal data_valid: STD_LOGIC;
  signal send_out: STD_LOGIC;
  signal send_in: STD_LOGIC;
  signal testing: STD_LOGIC;
  signal test_count: std_logic_vector(1 downto 0);

--constant clock_period: time := 10 ns; -- period of 100 MHz
  constant CLK_IN_PERIOD : time := 10 ns; -- Period of clk_in (100 MHz)
  constant CLK_EN_PERIOD : time := 12.5 us; -- Period of clk_en (800 kHz)
  signal stop_the_clock: boolean;

begin

  uut: sending port map ( clk_in     => clk_in,
                          clk_en     => clk_en,
                          reset      => reset,
                          data_valid => data_valid,
                          send_out   => send_out,
                          send_in    => send_in,
                          testing    => testing,
                          test_count => test_count );

  stimulus: process
  begin
    reset<= '1';
    wait for 5 us;
    reset <= '0';
    -- Put initialisation code here    
    data_valid <= '1';
    send_in <= '0';
    wait for 10 ns;
    send_in <= '0';
    wait for 20 us;
    send_in <= '1';
    wait for 4 us;
    send_in <= '0';
    wait for 15 us;
    send_in <= '1';
    wait for 35 us;
    data_valid <= '0';

    -- Put test bench stimulus code here

    
    wait;
  end process;

  clocking: process
          variable clk_en_counter : natural := 0;
    begin
        clk_in <= '0', '1' after CLK_IN_PERIOD / 2;     
        wait for CLK_IN_PERIOD;

        -- Generate clk_en every 800 kHz
        clk_en_counter := clk_en_counter + 1;
        if clk_en_counter = integer(1250) then
            clk_en <= not clk_en;
            clk_en_counter := 0;
        else
            clk_en <= '0';
        end if;
  --begin
    --while not stop_the_clock loop
      --clk_in <= '0', '1' after clock_period / 2;
      --wait for clock_period;
    --end loop;
    --wait;
  end process;

end;
