----------------------------------------------------------------------------------
-- Company: OTH Regensburg
-- Engineer: Benedikt Gareis
-- 
-- Create Date: 12/04/2023 08:40:43 AM
-- Design Name: 
-- Module Name: demux_x4 - Behavioral
-- Project Name: WS2812b Control
-- Target Devices: CoraZ7
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Demux_x4 is
  Port(
	clk_in	: in std_logic;
	clk_en  : in std_logic;
	reset   : in std_logic;
    SEL     : in std_logic_vector (1 downto 0);
    IN_A   : in std_logic;
    OUT_A   : out std_logic;
    OUT_B   : out std_logic;
    OUT_C   : out std_logic;
    OUT_D   : out std_logic
   );
end Demux_x4;

architecture Behavioral of Demux_x4 is

signal internal_data : std_logic;

begin
    Demux_x4 : process(clk_in, reset, clk_en, SEL)
    begin
 
        if reset = '1' then
            OUT_A <= 'Z';
            OUT_B <= 'Z';
            OUT_C <= 'Z';
            OUT_D <= 'Z';
        elsif clk_in = '1' and clk_en = '1' then
            case SEL is
                when "00" =>
                    OUT_A <= IN_A;
                    OUT_B <= '0';
                    OUT_C <= '0';
                    OUT_D <= '0';
                when "01" =>
                    OUT_A <= '0';
                    OUT_B <= IN_A;
                    OUT_C <= '0';
                    OUT_D <= '0';
                when "10" =>
                    OUT_A <= '0';
                    OUT_B <= '0';
                    OUT_C <= IN_A;
                    OUT_D <= '0';
                when others =>
                    OUT_A <= '0';
                    OUT_B <= '0';
                    OUT_C <= '0';
                    OUT_D <= IN_A;
            end case;
        end if;
    end process;

end Behavioral;