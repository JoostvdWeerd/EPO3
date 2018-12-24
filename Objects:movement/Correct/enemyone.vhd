library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity enemyone is
   port(frame_ready : in 	std_logic;
	reset       : in  std_logic;
        spawn       : in  std_logic;
        collision   : in  std_logic;
        x_spawn_pos : in  std_logic_vector(8 downto 0);
        y_spawn_pos : in  std_logic_vector(8 downto 0);
        alive       : out std_logic;
        enemy_xposition  : out std_logic_vector(8 downto 0);
        enemy_yposition  : out std_logic_vector(8 downto 0));
end enemyone;

