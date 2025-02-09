----------------------------------------------------------------------------------
-- Company: OTH Regensburg
-- Engineer: Benedikt Gareis
-- 
-- Create Date: 12/13/2023 12:36:33 PM
-- Design Name: 
-- Module Name: Prescaler_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision: 0.2 redone and now the instances are synchronous at startup to each other
-- Revision: 1.0 Cleanup done. working as intended
-- Additional Comments:
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Prescaler_1 is
  Port ( 
    clk_in : in STD_LOGIC;          -- Input clock
    reset  : in STD_LOGIC;          -- Reset signal (active-high)
    enable : in STD_LOGIC;          -- Enable signal
    clk_out: out STD_LOGIC;         -- Output clock
    prescale_value : in unsigned(15 downto 0)  -- Prescale value
  );
end Prescaler_1;

architecture Behavioral of Prescaler_1 is

  signal counter : unsigned(15 downto 0) := prescale_value;  -- Counter that counts to the desired number
  signal internal_clk : STD_LOGIC := '0';  -- Internal clock signal

begin

  process_prescale : process(clk_in, enable, reset)
  begin

    if reset = '1' then
      internal_clk <= '0';
      -- Counter initialization to prescale_value for synchronous startup
      counter <= prescale_value;
    elsif rising_edge (clk_in) and (enable = '1') then
      if (counter = prescale_value) then
        counter <= (others => '0');
        internal_clk <= '1';
      else
        counter <= counter + "1";
        internal_clk <= '0';
      end if;
    end if;
  end process process_prescale;

-- Output the internal clock signal
clk_out <= internal_clk;  

end Behavioral;
