library IEEE;
use IEEE.std_logic_1164.ALL;

-- y counter takes the x counter as input
entity y_counter is
   port(clk	  : in  std_logic;
	x     : in  std_logic_vector(8 downto 0);
        reset : in  std_logic;
        y     : out std_logic_vector(9 downto 0));
end y_counter;

