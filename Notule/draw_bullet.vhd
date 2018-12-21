library IEEE;
use IEEE.std_logic_1164.ALL;

entity draw_bullet is
   port(x_bul      : in  std_logic_vector(8 downto 0);
        y_bul      : in  std_logic_vector(8 downto 0);
        x          : in  std_logic_vector(8 downto 0);
        y          : in  std_logic_vector(9 downto 0);
	draw_count : in  std_logic_vector(4 downto 0);
        R          : out std_logic;
	G          : out std_logic;
	B          : out std_logic;
	enable     : out std_logic);
end draw_bullet;
