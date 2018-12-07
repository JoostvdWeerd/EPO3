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
        x_bullet1 : in  std_logic_vector(8 downto 0);
        y_bullet1 : in  std_logic_vector(8 downto 0));
   end component;
   signal clk       : std_logic;
   signal reset	    : std_logic;
   signal hsync     : std_logic;
   signal vsync     : std_logic;
   signal x_bullet1, y_bullet1 : std_logic_vector(8 downto 0);
   signal r, g, b, enable_calc: std_logic;
begin
test: display port map (clk, reset, r, g, b, hsync, vsync, enable_calc, x_bullet1, y_bullet1);
   clk <= '1' after 0 ns,
        '0' after 40 ns when clk /= '0' else '1' after 40 ns;
   reset <= '1' after 0 ns, '0' after 200 ns;
   x_bullet1 <= (others => '0');
   y_bullet1 <= (others => '0');
end behaviour;

