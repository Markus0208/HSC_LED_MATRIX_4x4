----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2023 10:25:13 PM
-- Design Name: 
-- Module Name: prescaler_tb - Behavioral
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

entity Prescaler_1_tb is
end;

architecture bench of Prescaler_1_tb is

  component Prescaler_1
    Port ( 
      clk_in : in STD_LOGIC;
      reset  : in STD_LOGIC;
      clk_out: out STD_LOGIC;
      prescale_value : in unsigned(15 downto 0)
    );
  end component;

  signal clk_in: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal clk_out: STD_LOGIC;
  signal prescale_value: unsigned(15 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Prescaler_1 port map ( clk_in         => clk_in,
                              reset          => reset,
                              clk_out        => clk_out,
                              prescale_value => prescale_value );

  stimulus: process
  begin
  
    -- Put initialisation code here

    reset <= '1';
    wait for 5 ns;
    reset <= '0';

prescale_value <= x"007D";


    wait for 50 us;



    -- Put test bench stimulus code here

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk_in <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;