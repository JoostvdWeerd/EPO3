library IEEE;
use IEEE.std_logic_1164.ALL;

-- the top entity of our module, most inputs are commented
-- because they are not being used in the testing yet.
entity display is
   port(clk       : in  std_logic;
	reset	  : in  std_logic;
--	game	  : in  std_logic;
        r         : out std_logic;
        g         : out std_logic;
        b         : out std_logic;
        hsync     : out std_logic;
        vsync     : out std_logic;
	enable_calc : out std_logic;
--      x_player  : in  std_logic_vector(8 downto 0);
--      y_player  : in  std_logic_vector(8 downto 0);
        x_bullet1 : in  std_logic_vector(8 downto 0);
        y_bullet1 : in  std_logic_vector(8 downto 0));
--      x_bullet2 : in  std_logic_vector(8 downto 0);
---     y_bullet2 : in  std_logic_vector(8 downto 0);
--      x_bullet3 : in  std_logic_vector(8 downto 0);
--      y_bullet3 : in  std_logic_vector(8 downto 0);
--	x_enemy1  : in  std_logic_vector(8 downto 0);
--	y_enemy1  : in  std_logic_vector(8 downto 0);
--	x_enemy2  : in  std_logic_vector(8 downto 0);
--	y_enemy2  : in  std_logic_vector(8 downto 0);
--	x_enemy3  : in  std_logic_vector(8 downto 0);
--	y_enemy3  : in  std_logic_vector(8 downto 0);
--	x_enemy4  : in  std_logic_vector(8 downto 0);
--	y_enemy4  : in  std_logic_vector(8 downto 0);
--	x_enemy5  : in  std_logic_vector(8 downto 0);
--	y_enemy5  : in  std_logic_vector(8 downto 0);
--	x_enemy6  : in  std_logic_vector(8 downto 0);
--	y_enemy6  : in  std_logic_vector(8 downto 0));
end display;

