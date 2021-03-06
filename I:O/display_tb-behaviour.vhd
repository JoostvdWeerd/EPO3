library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of display_tb is
   component display
      port(clk       : in  std_logic;
   	reset	  : in  std_logic;
           r         : out std_logic;
           g         : out std_logic;
           b         : out std_logic;
           hsync     : out std_logic;
           vsync     : out std_logic;
   	enable_calc : out std_logic;
           x_player : in  std_logic_vector(8 downto 0);
           y_player : in  std_logic_vector(8 downto 0);
           x_bullet1 : in  std_logic_vector(8 downto 0);
           y_bullet1 : in  std_logic_vector(8 downto 0);
           x_bullet2 : in  std_logic_vector(8 downto 0);
           y_bullet2 : in  std_logic_vector(8 downto 0);
           x_bullet3 : in  std_logic_vector(8 downto 0);
           y_bullet3 : in  std_logic_vector(8 downto 0);
 	x_enemy1  : in  std_logic_vector(8 downto 0);
	y_enemy1  : in  std_logic_vector(8 downto 0);
	x_enemy2  : in  std_logic_vector(8 downto 0);
	y_enemy2  : in  std_logic_vector(8 downto 0);
	x_enemy3  : in  std_logic_vector(8 downto 0);
	y_enemy3  : in  std_logic_vector(8 downto 0);
	x_enemy4  : in  std_logic_vector(8 downto 0);
	y_enemy4  : in  std_logic_vector(8 downto 0);
	x_enemy5  : in  std_logic_vector(8 downto 0);
	y_enemy5  : in  std_logic_vector(8 downto 0);
	x_enemy6  : in  std_logic_vector(8 downto 0);
	y_enemy6  : in  std_logic_vector(8 downto 0));
   end component;

   signal clk       : std_logic;
   signal reset	  : std_logic;
   signal r         : std_logic;
   signal g         : std_logic;
   signal b         : std_logic;
   signal hsync     : std_logic;
   signal vsync     : std_logic;
   signal enable_calc : std_logic;
   signal x_bullet1, x_bullet2, x_bullet3, x_player, x_enemy1, x_enemy2, x_enemy3, x_enemy4, x_enemy5, x_enemy6 : std_logic_vector(8 downto 0);
   signal y_bullet1, y_bullet2, y_bullet3, y_player, y_enemy1, y_enemy2, y_enemy3, y_enemy4, y_enemy5, y_enemy6 : std_logic_vector(8 downto 0);
begin
test: display port map (clk, reset, r, g, b, hsync, vsync, enable_calc, x_player, y_player, x_bullet1, y_bullet1, x_bullet2, y_bullet2, x_bullet3 ,y_bullet3, x_enemy1, y_enemy1, x_enemy2, y_enemy2, x_enemy3, y_enemy3, x_enemy4, y_enemy4, x_enemy5, y_enemy5, x_enemy6, y_enemy6);

   clk <= '1' after 0 ns,
        '0' after 40 ns when clk /= '0' else '1' after 40 ns;

   reset <= '1' after 0 ns, '0' after 200 ns;
   x_bullet1 <= (others => '1');
   y_bullet1 <= (others => '1');
   x_bullet2 <= (others => '1');
   y_bullet2 <= (others => '1');
   x_bullet3 <= (others => '1');
   y_bullet3 <= (others => '1');
   x_player  <= "000000000";
   y_player  <= "000000000";
   x_enemy1  <= "000111010";
   y_enemy1  <= "000111010";
   x_enemy2  <= (others => '1');
   y_enemy2  <= (others => '1');
   x_enemy3  <= (others => '1');
   y_enemy3  <= (others => '1');
   x_enemy4  <= (others => '1');
   y_enemy4  <= (others => '1');
   x_enemy5  <= (others => '1');
   y_enemy5  <= (others => '1');
   x_enemy6  <= (others => '1');
   y_enemy6  <= (others => '1');

end behaviour;

