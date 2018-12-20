library IEEE;
use IEEE.std_logic_1164.ALL;

entity lsfr is
   port(clk       : in  std_logic;
	enable    : in  std_logic;
	reset	  : in  std_logic;
        rand_numb : out std_logic_vector(15 downto 0));
end lsfr;

