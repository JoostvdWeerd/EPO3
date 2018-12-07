library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of display is
-- first we declare the components used
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
component drawing is
  port (clk             : in  std_logic;
        reset           : in  std_logic;
	x		: in std_logic_vector(8 downto 0);
        y 			: in std_logic_vector(9 downto 0);
        x_object        : in std_logic_vector(8 downto 0);
        y_object        : in std_logic_vector(8 downto 0);		
	R_object		: out std_logic;
	G_object		: out std_logic;
	B_object		: out std_logic);
end component;


-- then we declare the signals used
signal x : std_logic_vector(8 downto 0);
signal y : std_logic_vector(9 downto 0);


begin
-- and now we port map everyting, nothing weird going on here.
lblx: x_counter port map (clk => clk, reset => reset, x => x);

lbly: y_counter port map (clk => clk, reset => reset, x => x, y => y);

lbld: drawing port map (clk => clk, reset => reset, x => x, y => y, 
			x_object => x_bullet1, y_object => y_bullet1, 
			R_object => r, G_object => g, B_object => b); 

lbls: sync port map (clk => clk, x => x, y => y, reset => reset, 
		     h_sync => hsync, v_sync => vsync, 
		     enable_calc => enable_calc);

end behaviour;
