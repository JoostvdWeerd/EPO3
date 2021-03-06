library IEEE;
use IEEE.std_logic_1164.ALL;

-- sync uses the x and y counter and outputs the sync signals
entity sync is
   port(clk	 	    : in  std_logic;
	x           : in  std_logic_vector(8 downto 0);
        y           : in  std_logic_vector(9 downto 0);
	reset 	    : in std_logic;
        h_sync      : out std_logic;
        v_sync      : out std_logic;
        enable_calc : out std_logic);
end sync;

