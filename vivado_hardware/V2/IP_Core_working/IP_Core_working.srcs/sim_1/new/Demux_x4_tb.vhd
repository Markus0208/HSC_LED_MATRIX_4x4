----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2024 06:58:44 PM
-- Design Name: 
-- Module Name: Demux_x4_tb - Behavioral
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

entity Demux_x4_tb is
end;

architecture bench of Demux_x4_tb is

  component Demux_x4
    Port(
  	clk_in	: in std_logic;
  	clk_en  : in std_logic;
  	reset   : in std_logic;
      SEL     : in std_logic_vector (1 downto 0);
      IN_A      : in std_logic;
      OUT_VEC : out STD_LOGIC_VECTOR(3 downto 0);
      OUT_A   : out std_logic;
      OUT_B   : out std_logic;
      OUT_C   : out std_logic;
      OUT_D   : out std_logic
     );
  end component;

  signal clk_in: std_logic;
  signal clk_en: std_logic;
  signal reset: std_logic;
  signal SEL: std_logic_vector (1 downto 0);
  signal IN_A: std_logic;
  signal OUT_VEC : STD_LOGIC_VECTOR(3 downto 0);
  signal OUT_A: std_logic;
  signal OUT_B: std_logic;
  signal OUT_C: std_logic;
  signal OUT_D: std_logic ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Demux_x4 port map ( clk_in => clk_in,
                           clk_en => clk_en,
                           reset  => reset,
                           SEL    => SEL,
                           IN_A   => IN_A,
                           OUT_VEC => OUT_VEC,
                           OUT_A  => OUT_A,
                           OUT_B  => OUT_B,
                           OUT_C  => OUT_C,
                           OUT_D  => OUT_D );

  stimulus: process
  begin
  
    -- Put initialisation code here
    reset <= '1';
    wait for 3 ns;
    reset <= '0';
    SEL <= "00";
    wait for 1.5 ns;
    clk_en <= '1';
    
    IN_A <= '1';
    wait for 1 ns;
    clk_en <= '0';
    wait for 9 ns; 
    
    clk_en <= '1';
    SEL <= "01";
    IN_A <= '1';
    wait for 1 ns;
    clk_en <= '0';
    wait for 9 ns; 
    
        clk_en <= '1';
    SEL <= "10";
    IN_A <= '1';
    wait for 1 ns;
    clk_en <= '0';
    wait for 9 ns; 
    
    clk_en <= '1';
    SEL <= "11";
    IN_A <= '1';
    wait for 1 ns;
    clk_en <= '0';
    wait for 9 ns;
    
    IN_A <= '0'; 
    SEL <= "ZZ";
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