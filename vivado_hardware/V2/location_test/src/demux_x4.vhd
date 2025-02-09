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
-- Description: takes in 24 Bit parallel and sends them to one of four selectable outputs,
-- both in vector and discrete form
-- 
-- Dependencies: 
-- 
-- Revision: 1
-- Revision 1.00 - File simulated and working as expected
-- Additional Comments:
-- not yet sure which output form is better suited
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
    IN_A    : in std_logic;
    OUT_VEC : out std_logic_vector (3 downto 0);
    OUT_A   : out std_logic;
    OUT_B   : out std_logic;
    OUT_C   : out std_logic;
    OUT_D   : out std_logic
   );
end Demux_x4;

architecture Behavioral of Demux_x4 is

begin
    -- Asynchronous reset process
    process (reset)
    begin
        if reset = '1' then
          -- Reset condition: Set all outputs to high-impedance
          OUT_VEC <= "ZZZZ";
          OUT_A <= 'Z';
          OUT_B <= 'Z';
          OUT_C <= 'Z';
          OUT_D <= 'Z';
        end if;
    end process;

    -- Synchronous process triggered on the rising edge of clk_in
    Demux_x4 : process(clk_in, clk_en, SEL)
    begin
        if rising_edge(clk_in) and clk_en = '1' then
            case SEL is
              when "00" =>
                -- SEL is "00": Output A is connected to IN_A, other outputs set to zero
                OUT_VEC(0) <= IN_A;
                OUT_A <= IN_A;
                OUT_B <= '0';
                OUT_C <= '0';
                OUT_D <= '0';
              when "01" =>
                -- SEL is "01": Output B is connected to IN_A, other outputs set to zero
                OUT_VEC(1) <= IN_A;
                OUT_A <= '0';
                OUT_B <= IN_A;
                OUT_C <= '0';
                OUT_D <= '0';
              when "10" =>
                -- SEL is "10": Output C is connected to IN_A, other outputs set to zero
                OUT_VEC(2) <= IN_A;
                OUT_A <= '0';
                OUT_B <= '0';
                OUT_C <= IN_A;
                OUT_D <= '0';
              when others =>
                -- SEL is "11" or other values: Output D is connected to IN_A, other outputs set to zero
                OUT_VEC(3) <= IN_A;
                OUT_A <= '0';
                OUT_B <= '0';
                OUT_C <= '0';
                OUT_D <= IN_A;
            end case;
        end if;
    end process;

end Behavioral;