----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:00 06/19/2014 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparator is
    Port ( Zi : in  STD_LOGIC_VECTOR (31 downto 0);
           Z0 : in  STD_LOGIC_VECTOR (31 downto 0);
           Yi : in  STD_LOGIC_VECTOR (31 downto 0);
           Y0 : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           OperationSelect : in  STD_LOGIC;
           Output : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
	-- 1 for positive, 0 for negative.

end Behavioral;

