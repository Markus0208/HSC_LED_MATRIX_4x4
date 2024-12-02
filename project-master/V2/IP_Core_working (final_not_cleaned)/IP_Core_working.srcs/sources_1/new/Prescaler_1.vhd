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
      -- Uncomment the next line to reset the counter to zero, which can cause asynchronous behaviour
      -- counter <= (others => '0');
      counter <= prescale_value;
    elsif rising_edge (clk_in) and (enable = '1') then
      if (counter = prescale_value) then
        counter <= (others => '0');
        internal_clk <= '1';
        -- Uncomment the next line for toggling internal_clk to 50:50 duty cycle
        -- internal_clk <= not internal_clk;
      else
        counter <= counter + "1";
        internal_clk <= '0';
					
      end if;
    end if;

  end process process_prescale;

  clk_out <= internal_clk;  -- Output the internal clock signal

end Behavioral;
