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
-- Revision 1.0 Function complete 20.01.2024
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_register_x24 is
    Port ( 
           clk_in       : in STD_LOGIC;
           clk_en       : in STD_LOGIC;
           reset        : in STD_LOGIC;
           -- to DMA
           input_valid  : in STD_LOGIC;
           input_data	: in STD_LOGIC_VECTOR(23 downto 0);
           input_ready  : out STD_LOGIC;
           -- to sending block
		   output_ready	: in STD_LOGIC;
		   output_valid	: out STD_LOGIC; 
           output_data  : out STD_LOGIC--;
           -- testing
           --TEST_out_counter : out std_logic_vector(4 downto 0);
           --test_out_sending_data : out std_logic
           );
end shift_register_x24;

architecture Behavioral of shift_register_x24 is

    type State_Type is (LoadBit, ShiftBit, WaitforSending);
    signal current_state   : State_Type;
	-- to DMA
    signal input_ready_sig : std_logic;
	signal shift_register_sig : STD_LOGIC_VECTOR(23 downto 0) := (others => '0');
	-- to sending block
    signal output_data_sig : std_logic;
	signal output_valid_sig: std_logic;
	--24 shift operations - at 0 shift register is empty
	signal counter : natural range 0 to 24 := 0; 
	
begin

    send : process(clk_in, reset) is
    begin
        -- Asynchronous reset process
        if reset = '1' then
            current_state <= LoadBit;
            input_ready_sig <= 'U'; -- ready to receive data 
            output_data_sig <= 'U';
			output_valid_sig <= 'U';
			
        -- Synchronous process
        elsif rising_edge(clk_in) then -- and clk_en = '1' then
            
            case current_state is
                when LoadBit => 

                    -- wenn bereit zum laden, dann laden
                        if input_valid = '1' then --comes from DMA
                            shift_register_sig <= input_data;
                            counter <= 24; --set counter to full length
                            input_ready_sig <= '1';
                            current_state <= ShiftBit;
                            
                        end if;
                        
                    -- wenn nicht bereit, dann warten
                    output_valid_sig <= '0';
                
                when ShiftBit =>
                -- input ready always zero
                input_ready_sig <= '0';
				--sending block is able to receive			  

                        counter <= counter - 1;
                        shift_register_sig <= shift_register_sig(22 downto 0) &'0';
                        output_valid_sig <= '1';
                        output_data_sig <= shift_register_sig(23);
                        
                        current_state <= WaitforSending;
                        
                when WaitforSending =>
                
                --if counter is greater equal 1 then send
                --if last bit is reached -> change state to load
                    if output_ready = '1' then
                        output_valid_sig <= '0';
                        if counter >= 1 then
					       current_state <= ShiftBit;
					    else 
                            current_state <= LoadBit;
                        end if;
                   end if;
            end case;
        end if;
    end process send;

--to DMA
input_ready <= input_ready_sig;

--to sending block
output_data <= output_data_sig;
output_valid <= output_valid_sig;

--TEST
--TEST_out_counter <= std_logic_vector(to_unsigned(counter, 5));
end Behavioral;

