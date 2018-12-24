library IEEE;
use IEEE.std_logic_1164.ALL;

entity player is
   port(reset	    : in 	std_logic;
        frame_ready : in  std_logic;
        x_control   : in  std_logic_vector(1 downto 0);
        y_control   : in  std_logic_vector(1 downto 0);
        x_position  : out std_logic_vector(8 downto 0);
        y_position  : out std_logic_vector(8 downto 0));
end player;

