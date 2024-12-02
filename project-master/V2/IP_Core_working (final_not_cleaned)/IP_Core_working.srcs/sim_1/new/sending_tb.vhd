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
           clk_in       : in STD_LOGIC;
           clk_en       : in STD_LOGIC;
           reset        : in STD_LOGIC;
           
           input_valid  : in STD_LOGIC;
           input_data   : in STD_LOGIC;
           input_ready  : out STD_LOGIC;
           
           output_data  : out STD_LOGIC
           );
  end component;

  signal clk_in     : STD_LOGIC;
  signal clk_en     : STD_LOGIC := '0';
  signal reset      : STD_LOGIC;
  signal input_valid: STD_LOGIC;
  signal input_data : STD_LOGIC;
  signal input_ready: STD_LOGIC;
  signal output_data: STD_LOGIC;


--constant clock_period: time := 10 ns; -- period of 100 MHz
  constant CLK_IN_PERIOD : time := 10 ns; -- Period of clk_in (100 MHz)
  constant CLK_EN_PERIOD : time := 420 ns; -- Period of clk_en (2400 kHz)

begin

  uut: sending port map ( clk_in      => clk_in,
                          clk_en      => clk_en,
                          reset       => reset,
                          input_valid => input_valid,
                          input_data  => input_data,
                          input_ready => input_ready,
                          output_data => output_data);

  stimulus: process
  begin
    reset<= '1';
    wait for 10 ns;
    reset <= '0';
    
    for ii in 0 to 5 loop
        -- one cycle
        input_data <= '1';
        input_valid <= '1';    
        wait until rising_edge(clk_in) and input_ready = '1';     
        input_valid <= '0';
        wait until rising_edge(clk_in);
        -- one cycle
        input_data <= '0';
        input_valid <= '1';
        wait until rising_edge(clk_in) and input_ready = '1';
        input_valid <= '0';
        wait until rising_edge(clk_in);     
    end loop;
    
    
    wait;
  end process;

  clocking: process
          variable clk_en_counter : natural := 0;
    begin
        clk_in <= '0', '1' after CLK_IN_PERIOD / 2;     
        wait for CLK_IN_PERIOD;

        -- Generate clk_en every 2400 kHz
        clk_en_counter := clk_en_counter + 1;
        if clk_en_counter = integer(41) then
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
