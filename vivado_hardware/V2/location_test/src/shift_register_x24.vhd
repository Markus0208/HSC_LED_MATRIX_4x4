----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/13/2023 08:29:40 PM
-- Design Name: 
-- Module Name: shift_register_x24 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- https://electronics.stackexchange.com/questions/57035/n-bit-shift-register-serial-out-in-vhdl
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_register_x24 is
    Port ( clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           load : out STD_LOGIC;
           parallel_input : in STD_LOGIC_VECTOR(23 downto 0);
           serial_output : out STD_LOGIC
           );
end shift_register_x24;

architecture Behavioral of shift_register_x24 is
    constant NUM_BITS : integer := 24;
    
    signal serial : std_logic := clk_in;
    signal shift_register : STD_LOGIC_VECTOR(NUM_BITS-1 downto 0) := (others => '0');
    --signal input_buffer : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
-- 32 bit für 24 zähler
    signal counter : unsigned(4 downto 0) := "00000";
    
begin

    process(clk_in, reset)
    begin
        if reset = '1' then
            shift_register <= (others => '0');
            load <= '0';
            counter <= to_unsigned(0, counter);
            serial_output <= 'Z';
            --shifte mit 
        elsif rising_edge(clk_in) and enable = '1' then
            if counter = 0 then
                load <= '1'; --anforderung nächsten 24 Bit 
                shift_register <= parallel_input;
                counter <= to_unsigned(23, counter); --setze auf D23
            else --shift
            load <= '0';
                counter <= counter - 1;
                shift_register <= shift_register(NUM_BITS-2 downto 0) &'0';
            end if;
        end if;
    end process;

    serial_output <= shift_register(23);

end Behavioral;