library IEEE;
use IEEE.std_logic_1164.ALL;

entity draw_counter is
   port(clk        : in  std_logic;
        reset      : in  std_logic;
	enable     : in std_logic;
        draw_count : out std_logic_vector(4 downto 0));
end draw_counter;

