library IEEE;
use IEEE.std_logic_1164.ALL;

entity x_counter is
   port(clk : in  std_logic;
        x   : out std_logic_vector(8 downto 0);
	reset : in std_logic);
end x_counter;

