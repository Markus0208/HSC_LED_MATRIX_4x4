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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sending is
    Port ( 
           clk_in : in STD_LOGIC;
           clk_en: in STD_LOGIC;
           reset : in STD_LOGIC;
           data_valid : in STD_LOGIC;
           send_out : out STD_LOGIC;
           send_in : in STD_LOGIC;
           testing: out STD_LOGIC;
           test_count : out STD_LOGIC_VECTOR(1 downto 0)
           );
end sending;
--functinoal description:
--when data_valid is set to one sending is allowed and a latch is set to make sure sending is complete
--
architecture Behavioral of sending is

signal latch_send : std_logic := 'Z';
signal send_in_progress : std_logic := '0';
signal send_out_internal : std_logic := 'Z';
--signal send_count : unsigned(1 downto 0) := "00";

signal send_count : natural range 0 to 2 := 0;

begin

   -- Asynchronous reset process
   reset_process : process (reset)
   begin
      if reset = '1' then
         send_out_internal <= 'Z';
         latch_send <= '0';
         send_count <= 0;
      end if;
   end process reset_process;

   -- Synchronous process for data transmission
    send : process(clk_in, clk_en, data_valid, send_in, send_count) is
    begin
		if rising_edge(clk_in) and clk_en = '1' then
			if data_valid = '1' or latch_send = '1' then
				--latch only when send_count = 00 so at the start of bit
                    if send_count = 0 then
                        latch_send <= '1';
					end if;
				--latch_send <= '1';
				-- latch if sending is currently in progress
					if latch_send = '1' or send_count = 0 then
						send_in_progress <= send_in;
					else 
						send_in_progress <= 'X';
					end if;
				-- sending a 0 is 100
                   if send_in_progress = '0' then
                            case send_count is
                                when 0 => send_out_internal <= '1';
                                when 1 => send_out_internal <= '0';
                                when 2 => send_out_internal <= '0';
                                when others => send_out_internal <= 'Z';
                            end case;
                       send_count <= send_count + 1;
				-- sending a 0 is 110
                   elsif send_in_progress = '1' then
                            case send_count is
                                when 0 => send_out_internal <= '1';
                                when 1 => send_out_internal <= '1';
                                when 2 => send_out_internal <= '0';
                                when others => send_out_internal <= 'Z';
                            end case;
					   send_count <= send_count + 1;
					-- send_in is not 0 or 1
					else
					   send_out_internal <= 'X';
					end if;
					-- reset the counter when 3 bits were send
					-- one or zero consists of three intervals
					if send_count = 2 then
						send_count <= 0;
						latch_send <= '0';
					end if;
                end if;
            --else
                --send_out_internal <= 'Z';
            end if;
    end process send;
    
 send_out <= send_out_internal; 
 testing <= latch_send; --latch status for testing purpose
 test_count <= std_logic_vector(to_unsigned(send_count, 2));
 --test_count <= send_count(to_integer(send_count'length) - 1 downto 0);
end Behavioral;