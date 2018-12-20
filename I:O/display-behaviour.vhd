library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of display is

component x_counter is
   port(clk : in  std_logic;
        x   : out std_logic_vector(8 downto 0);
	reset : in std_logic);
end component;

component y_counter is
   port(clk	  : in  std_logic;
	x     : in  std_logic_vector(8 downto 0);
        reset : in  std_logic;
        y     : out std_logic_vector(9 downto 0));
end component;

component sync is
   port(clk         : in  std_logic;
	x           : in  std_logic_vector(8 downto 0);
        y           : in  std_logic_vector(9 downto 0);
	reset 	    : in std_logic;
        h_sync      : out std_logic;
        v_sync      : out std_logic;
        enable_calc : out std_logic);
end component;

component draw_counter is
   port(clk        : in  std_logic;
        reset      : in  std_logic;
	enable     : in std_logic;
        draw_count : out std_logic_vector(4 downto 0));
end component;

component bullet is
   port(x_bul      : in  std_logic_vector(8 downto 0);
        y_bul      : in  std_logic_vector(8 downto 0);
        x          : in  std_logic_vector(8 downto 0);
        y          : in  std_logic_vector(9 downto 0);
	draw_count : in  std_logic_vector(4 downto 0);
        R          : out std_logic;
	G          : out std_logic;
	B          : out std_logic;
	enable     : out std_logic);
end component;
component player is
   port(x_pl       : in  std_logic_vector(8 downto 0);
        y_pl       : in  std_logic_vector(8 downto 0);
        x          : in  std_logic_vector(8 downto 0);
        y          : in  std_logic_vector(9 downto 0);
        draw_count : in  std_logic_vector(4 downto 0);
        R          : out std_logic;
        G          : out std_logic;
        B          : out std_logic;
        enable     : out std_logic);
end component;
component enemy is
   port(x_en       : in  std_logic_vector(8 downto 0);
        y_en       : in  std_logic_vector(8 downto 0);
        x          : in  std_logic_vector(8 downto 0);
        y          : in  std_logic_vector(9 downto 0);
        draw_count : in  std_logic_vector(4 downto 0);
        R          : out std_logic;
        G          : out std_logic;
        B          : out std_logic;
        enable     : out std_logic);
end component;




-- then we declare the signals used
signal x : std_logic_vector(8 downto 0);
signal y : std_logic_vector(9 downto 0);
signal enable1, enable2, enable3, enable4, enable5, enable6, enable7, enable8, enable9, enable10 : std_logic;
signal draw_count1, draw_count2, draw_count3, draw_count4, draw_count5, draw_count6, draw_count7, draw_count8, draw_count9, draw_count10 : std_logic_vector(4 downto 0);
signal r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10 : std_logic;


begin
-- port mapping the x and y counters and the sync
l01: x_counter port map (clk => clk, reset => reset, x => x);
l02: y_counter port map (clk => clk, reset => reset, x => x, y => y);
l03: sync port map (clk => clk, x => x, y => y, reset => reset, 
		     h_sync => hsync, v_sync => vsync, 
		     enable_calc => enable_calc);
-- mapping all the draw counters
l041: draw_counter port map (clk => clk, reset => reset, enable => enable1, 
			    draw_count => draw_count1);
l042: draw_counter port map (clk => clk, reset => reset, enable => enable2, 
			    draw_count => draw_count2);
l043: draw_counter port map (clk => clk, reset => reset, enable => enable3, 
			    draw_count => draw_count3);
l044: draw_counter port map (clk => clk, reset => reset, enable => enable4, 
			    draw_count => draw_count4);
l045: draw_counter port map (clk => clk, reset => reset, enable => enable5, 
			    draw_count => draw_count5);
l046: draw_counter port map (clk => clk, reset => reset, enable => enable6, 
			    draw_count => draw_count6);
l047: draw_counter port map (clk => clk, reset => reset, enable => enable7, 
			    draw_count => draw_count7);
l048: draw_counter port map (clk => clk, reset => reset, enable => enable8, 
			    draw_count => draw_count8);
l049: draw_counter port map (clk => clk, reset => reset, enable => enable9, 
			    draw_count => draw_count9);
l0410: draw_counter port map (clk => clk, reset => reset, enable => enable10, 
			    draw_count => draw_count10);
-- mapping the bullets
l051: bullet port map (x_bul => x_bullet1, y_bul => y_bullet1, x => x,
		      y => y, draw_count => draw_count1, R => r1,
		      G => g1, B => b1, enable => enable1);
l052: bullet port map (x_bul => x_bullet2, y_bul => y_bullet2, x => x,
		      y => y, draw_count => draw_count2, R => r2,
		      G => g2, B => b2, enable => enable2);
l053: bullet port map (x_bul => x_bullet3, y_bul => y_bullet3, x => x,
		      y => y, draw_count => draw_count3, R => r3,
		      G => g3, B => b3, enable => enable3);
-- mapping the player
l06: player port map (x_pl => x_player, y_pl => y_player, x => x, y => y,
		      draw_count => draw_count4, R => r4, G => g4,
		      B => b4, enable => enable4);
-- mapping the enemy
l071: enemy port map (x_en => x_enemy1, y_en => y_enemy1, x => x, y => y,
		      draw_count => draw_count5, R => r5, G => g5,
		      B => b5, enable => enable5);
l072: enemy port map (x_en => x_enemy2, y_en => y_enemy2, x => x, y => y,
		      draw_count => draw_count6, R => r6, G => g6,
		      B => b6, enable => enable6);
l073: enemy port map (x_en => x_enemy3, y_en => y_enemy3, x => x, y => y,
		      draw_count => draw_count7, R => r7, G => g7,
		      B => b7, enable => enable7);
l074: enemy port map (x_en => x_enemy4, y_en => y_enemy4, x => x, y => y,
		      draw_count => draw_count8, R => r8, G => g8,
		      B => b8, enable => enable8);
l075: enemy port map (x_en => x_enemy5, y_en => y_enemy5, x => x, y => y,
		      draw_count => draw_count9, R => r9, G => g9,
		      B => b9, enable => enable9);
l076: enemy port map (x_en => x_enemy6, y_en => y_enemy6, x => x, y => y,
		      draw_count => draw_count10, R => r10, G => g10,
		      B => b10, enable => enable10);




r <= (r1 or r2 or r3 or r4 or r5 or r6 or r7 or r8 or r9 or r10);
g <= (g1 or g2 or g3 or g4 or g5 or g6 or g7 or g8 or g9 or g10);
b <= (b1 or b2 or b3 or b4 or b5 or b6 or b7 or b8 or b9 or b10);

end behaviour;
