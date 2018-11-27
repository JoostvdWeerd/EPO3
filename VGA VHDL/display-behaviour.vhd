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


signal x : std_logic_vector(8 downto 0);
signal y : std_logic_vector(9 downto 0);

begin

lblx: x_counter port map (clk => clk, reset => reset, x => x);
lbly: y_counter port map (clk => clk, reset => reset, x => x, y => y);
lbls: sync port map (clk, x, y, reset, hsync, vsync, enable_calc);

end behaviour;