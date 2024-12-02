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
           output_data  : out STD_LOGIC;
                      -- testing
           TEST_out_counter : out std_logic_vector(4 downto 0);
           test_out_sending_data : out std_logic
           );
  end component;


    signal clk_in: STD_LOGIC;
    signal reset: STD_LOGIC;
    signal clk_en: STD_LOGIC;
  
    signal input_valid 	: std_logic;
    signal input_data	: STD_LOGIC_VECTOR(23 downto 0);	
    signal input_ready	: std_logic;	
    signal output_ready	: std_logic;
    signal output_valid	: std_logic;
    signal output_data	: std_logic;

    signal TEST_out_counter : std_logic_vector (4 downto 0);
    signal test_out_sending_data : std_logic;
    
    constant CLK_IN_PERIOD : time := 10 ns; -- Period of clk_in (100 MHz)
    constant CLK_EN_PERIOD : time := 1.25 us; -- Period of clk_en (800 kHz)


begin

  uut: shift_register_x24 port map (
                                    clk_in 			=> clk_in,
                                    clk_en 			=> clk_en,
                                    reset 			=> reset,
                                    input_valid 	=> input_valid,
                                    input_data		=> input_data,
                                    input_ready		=> input_ready,
                                    output_ready	=> output_ready,
                                    output_valid	=> output_valid,
                                    output_data		=> output_data,
                                    TEST_out_counter=> TEST_out_counter );

  sending: entity work.sending port map ( clk_in      => clk_in,
                                          clk_en      => clk_en,
                                          reset       => reset,
                                          input_valid => output_valid,
                                          input_data  => output_data,
                                          input_ready => output_ready,
                                          output_data => test_out_sending_data);
                
  stimulus: process
  begin
  
    -- Put initialisation code here

    reset <= '1';
    wait for 10 ns;
    reset <= '0';
    --wait for 10 ns;
   
   --simulate the dma as master

    for ii in 0 to 5 loop
        -- one cycle
        input_data <= X"FFFFFF";
        input_valid <= '1';   
        wait until rising_edge(clk_in) and input_ready = '1';     
        input_valid <= '0';
        wait until rising_edge(clk_in);
        
        -- one cycle
        input_data <= X"000000";
        input_valid <= '1';    
        wait until rising_edge(clk_in) and input_ready = '1';     
        input_valid <= '0';
        wait until rising_edge(clk_in);
        
        -- one cycle
        input_data <= X"AAAAAA";
        input_valid <= '1';
        wait until rising_edge(clk_in) and input_ready = '1';     
        input_valid <= '0';
        wait until rising_edge(clk_in);
    end loop;
   
    ----dma sim
    --input_data <= X"FFFFFF";
    --input_valid <= '1';
    --wait until rising_edge(clk_in);
    --input_valid <= '0';
    --wait until rising_edge(clk_in) and input_ready = '1';
    
    
    --input_data <= X"000000";
    --input_valid <= '1';
    --wait until rising_edge(clk_in);
    --input_valid <= '0';
    --wait until rising_edge(clk_in) and input_ready = '1';

    
    --for ii in 0 to 100 loop
        --wait until rising_edge(clk_in);
    --end loop;
    
    --wait until  rising_edge(clk_in) and input_ready = '1';
    --input_data <= X"123456";
    --input_valid <= '1';
    --wait until rising_edge(clk_in);
    --input_valid <= '0';
    --wait until rising_edge(clk_in) and input_ready = '1';

    
    wait;
  end process;

  

  clocking: process
          variable clk_en_counter : natural := 0;
    begin
        clk_in <= '0', '1' after CLK_IN_PERIOD / 2;     
        wait for CLK_IN_PERIOD;

        -- Generate clk_en every 800 kHz
        clk_en_counter := clk_en_counter + 1;
        if clk_en_counter = integer(125) then
            clk_en <= not clk_en;
            clk_en_counter := 0;
        else
            clk_en <= '0';
        end if;
  end process;

end;