library IEEE;
use IEEE.std_logic_1164.ALL;

entity draw_title is
   port(menu     : in  std_logic;
        gameover : in  std_logic;
        x        : in  std_logic_vector(8 downto 0);
        y        : in  std_logic_vector(9 downto 0);
        r        : out std_logic;
        g        : out std_logic;
        b        : out std_logic);
end draw_title;

