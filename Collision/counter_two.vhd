library IEEE;
use IEEE.std_logic_1164.ALL;

entity counter_two is
   port(clk     : in  std_logic;
        reset   : in  std_logic;
        start_value : in  std_logic_vector(3 downto 0);
	reset_2 : in  std_logic;
        count   : out std_logic_vector(3 downto 0));
end counter_two;

