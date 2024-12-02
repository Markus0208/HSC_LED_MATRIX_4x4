----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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

entity Prescaler_1 is
  Port ( 
    clk_in : in STD_LOGIC;
    reset  : in STD_LOGIC;
    enable : in STD_LOGIC;
    clk_out: out STD_LOGIC;
    prescale_value : in unsigned(15 downto 0)
  );
end Prescaler_1;

architecture Behavioral of Prescaler_1 is

signal internal_value : unsigned(15 downto 0) := prescale_value;
signal internal_clk : STD_LOGIC := '0';

begin

    process_prescale : process(clk_in, enable, reset)
    
    begin
    
    if reset = '1' then
        internal_clk <= '0';
        internal_value <= (others => '0');
    elsif rising_edge (clk_in) and (enable = '1') then
        if (internal_value = prescale_value) then
            internal_value <= (others => '0');
            internal_clk <= '1';
            --internal_clk <= not internal_clk; Keine Halbe halbe, sondern ein Takt HIGH
        else
            internal_value <= internal_value + "1";
            internal_clk <= '0';
        end if;
    end if;

end process process_prescale;

clk_out <= internal_clk;

end Behavioral;