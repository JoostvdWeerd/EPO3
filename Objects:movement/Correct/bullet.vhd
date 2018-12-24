library IEEE;
use IEEE.std_logic_1164.ALL;

entity bullet is
   port(frame_ready  : in  std_logic;
	reset        : in  std_logic;
        shoot        : in  std_logic;
        collision    : in  std_logic;
        x_position   : in  std_logic_vector(8 downto 0);
        y_position   : in  std_logic_vector(8 downto 0);
        bullet_state : out std_logic;
        x_bullet     : out std_logic_vector(8 downto 0);
        y_bullet     : out std_logic_vector(8 downto 0)
	);
end bullet;

