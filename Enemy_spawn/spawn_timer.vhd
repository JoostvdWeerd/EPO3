library IEEE;
use IEEE.std_logic_1164.ALL;

entity spawn_timer is
   port(in_1	      : in  std_logic;
	in_2	      : in  std_logic;
	in_3	      : in  std_logic;
	in_4	      : in  std_logic;
	in_5	      : in std_logic;
	in_6	      : in std_logic;
	in_7	      : in std_logic;
        clk        : in  std_logic;
        enable     : in  std_logic;
        prev_state : in  std_logic;
        decider    : out std_logic);
end spawn_timer;

