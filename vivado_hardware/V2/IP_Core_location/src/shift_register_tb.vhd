-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity shift_register_x24_tb is
end;

architecture bench of shift_register_x24_tb is

  component shift_register_x24
      Port ( clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           load : out STD_LOGIC;
           parallel_input : in STD_LOGIC_VECTOR(23 downto 0);
           serial_output : out STD_LOGIC);
  end component;

  signal clk_in: STD_LOGIC;
  signal reset: STD_LOGIC;
  signal enable: STD_LOGIC;
  signal load : STD_LOGIC;
  signal parallel_input: STD_LOGIC_VECTOR(23 downto 0);
  signal serial_output: STD_LOGIC;


  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: shift_register_x24 port map ( clk_in         => clk_in,
                                     reset          => reset,
                                     load           => load,
                                     enable         => enable,
                                     parallel_input => parallel_input,
                                     serial_output  => serial_output );

  stimulus: process
  begin
  
    -- Put initialisation code here

    reset <= '1';
    wait for 5 ns;
    reset <= '0';
    wait for 5 ns;
    enable <= '1';
    parallel_input <= X"F0F0F0";
    wait for 30 us;
    parallel_input <= X"000000";
    wait for 30 us;
    
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