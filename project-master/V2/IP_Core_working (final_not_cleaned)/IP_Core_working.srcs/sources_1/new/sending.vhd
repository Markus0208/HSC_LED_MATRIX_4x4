----------------------------------------------------------------------------------
-- Company: OTH Regensburg
-- Engineer: Benedikt Gareis
-- 
-- Create Date: 12/13/2023 07:41:52 PM
-- Design Name: 
-- Module Name: sending - Behavioral
-- Project Name: 
-- Target Devices: CoraZ7
-- Tool Versions: 
-- Description: Translation from Logic Bit to Transmission Bits
-- Logic 0 corresponds to Transmission 100 and Logic 1 to Transmission 110
-- Dependencies: 
-- 
-- Revision: 1
-- Revision 1.00 - File simulated and working as expected
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sending is
    Port ( 
           clk_in       : in STD_LOGIC;
           clk_en       : in STD_LOGIC;
           reset        : in STD_LOGIC;
           -- to shift 
           input_valid  : in STD_LOGIC;
           input_data   : in STD_LOGIC;
           input_ready  : out STD_LOGIC;
           -- to demux
           output_data  : out STD_LOGIC
           );
end sending;

architecture Behavioral of sending is

    type State_Type is (LoadBit, FirstBit, SecondBit, ThirdBit);
    signal current_state   : State_Type;
    signal input_ready_sig : std_logic;
    signal output_data_sig : std_logic;
    signal output_data_vec : std_logic_vector(2 downto 0);

    
begin

    send : process(clk_in, reset) is
    begin
        -- Asynchronous reset process
        if reset = '1' then
            current_state <= LoadBit;
            input_ready_sig <= 'U';
            output_data_sig <= 'U';
        
        -- Synchronous process
        elsif rising_edge(clk_in) then
        --always set input ready to zero, if needed the later statement will overwrite this one
            --input_ready_sig <= '0';
                
            case current_state is
                when LoadBit => 
                input_ready_sig <= '1';
                    if input_valid = '1' then
                    --decide which bit pattern to send 
                        if input_data = '1' then
                            output_data_vec <= "110";
                        else 
                            output_data_vec <= "100";
                        end if;
                        
                        current_state <= FirstBit;
                    end if;
                when FirstBit =>
                input_ready_sig <= '0';
                    if clk_en = '1'then
                        output_data_sig <= output_data_vec(2);
                        current_state <= SecondBit;
                    end if;
                when SecondBit =>
                input_ready_sig <= '0';
                    if clk_en = '1'then
                        output_data_sig <= output_data_vec(1);
                        current_state <= ThirdBit;
                    end if;
                when ThirdBit =>
                input_ready_sig <= '0';
                    if clk_en = '1'then
                        output_data_sig <= output_data_vec(0);
                        current_state <= LoadBit;
                        --ready to receive next logic bit
                    end if;
            end case;
        end if;
    end process send;

input_ready <= input_ready_sig;
output_data <= output_data_sig;

end Behavioral;
