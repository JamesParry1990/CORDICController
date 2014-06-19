--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:22 06/16/2014
-- Design Name:   
-- Module Name:   M:/CENG 441/CORDICController/ControllerTB.vhd
-- Project Name:  CORDICController
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Controller
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ControllerTB IS
END ControllerTB;
 
ARCHITECTURE behavior OF ControllerTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Controller
    PORT(
         code : IN  std_logic_vector(3 downto 0);
         start : IN  std_logic;
         done : IN  std_logic;
         t : OUT  std_logic;
         m : OUT  std_logic_vector(1 downto 0);
         i : OUT  std_logic_vector(3 downto 0);
         op : OUT  std_logic;
         load : OUT  std_logic;
         rst : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal code : std_logic_vector(3 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal done : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal t : std_logic;
   signal m : std_logic_vector(1 downto 0);
   signal i : std_logic_vector(3 downto 0);
   signal op : std_logic;
   signal load : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Controller PORT MAP (
          code => code,
          start => start,
          done => done,
          t => t,
          m => m,
          i => i,
          op => op,
          load => load,
          rst => rst,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

      wait for clk_period;
		
		rst <= '1';
		
		wait for clk_period;
		
		rst <= '0';
		
		wait for clk_period;
		
      code <= "0010";
		start <= '1';
		
		wait for clk_period;
		
		start <= '0';

      wait;
   end process;

END;
