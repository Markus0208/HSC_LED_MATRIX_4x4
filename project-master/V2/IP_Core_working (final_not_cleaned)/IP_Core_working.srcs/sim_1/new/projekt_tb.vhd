----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2024 10:55:31 AM
-- Design Name: 
-- Module Name: projekt_tb - Behavioral
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

-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Project_tb is
end;

architecture bench of Project_tb is

  component Project
    Port ( 
        enable  : in std_logic;
		
        --AXI conform
        aclk    : in std_logic;
        aresetn : in std_logic;
        s0_axis_tdata : in std_logic_vector(23 downto 0);
        s0_axis_tvalid : in std_logic;
        s0_axis_tready : out std_logic;
        LED_OUT        : out std_logic
          );
  end component;

signal enable : std_logic;
signal aclk : std_logic;
signal aresetn : std_logic;
signal s0_axis_tdata : std_logic_vector(23 downto 0);
signal s0_axis_tvalid : std_logic;
signal s0_axis_tready : std_logic;
signal LED_OUT : std_logic;
  
constant clock_period: time := 10 ns; --100MHz clock
signal stop_the_clock: boolean;

begin

  uut: Project port map ( aclk       => aclk,
                          aresetn    => aresetn,
                          enable     => enable,
                          s0_axis_tdata    => s0_axis_tdata,
                          s0_axis_tvalid => s0_axis_tvalid,
                          s0_axis_tready => s0_axis_tready,
                          LED_OUT => LED_OUT
                          );

  stimulus: process
  begin
  
    -- Put initialisation code here
    aresetn <= '0';
    wait for 5 ns;
    aresetn <= '1';
    wait for 10 ns;
    enable <= '1';
    -- Put test bench stimulus code here

    for ii in 0 to 5 loop
        -- one cycle
        s0_axis_tdata <= X"FFFFFF";
        s0_axis_tvalid <= '1';   
        wait until rising_edge(aclk) and s0_axis_tready = '1';     
        s0_axis_tvalid <= '0';
        wait until rising_edge(aclk);
       
        -- one cycle
        s0_axis_tdata <= X"000000";
        s0_axis_tvalid <= '1';   
        wait until rising_edge(aclk) and s0_axis_tready = '1';     
        s0_axis_tvalid <= '0';
        wait until rising_edge(aclk);
        
        -- one cycle
        s0_axis_tdata <= X"AAAAAA";
        s0_axis_tvalid <= '1';   
        wait until rising_edge(aclk) and s0_axis_tready = '1';     
        s0_axis_tvalid <= '0';
        wait until rising_edge(aclk);
    end loop;

    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      aclk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
