library IEEE;
use IEEE.std_logic_1164.ALL;

entity control_bullet is
   port(frame_ready				: in std_logic;
	reset			: in std_logic;
	shoot         			: in  std_logic;
	bullet_inscreen_1			: in  std_logic;
	bullet_inscreen_2			: in std_logic;
	bullet_inscreen_3			: in std_logic;
        shootb1       : out std_logic;
        shootb2       : out std_logic;
        shootb3       : out std_logic);
end control_bullet;
