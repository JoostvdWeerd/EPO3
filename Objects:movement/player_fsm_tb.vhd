library IEEE;
use IEEE.std_logic_1164.All;
use IEEE.numeric_std.ALL;

entity player_fsm_tb is
end entity player_fsm_tb;

architecture arch_player_fsm_tb of player_fsm_tb is

component player is
	port  (   x_control   : in  std_logic_vector(1 downto 0);
            	y_control   : in  std_logic_vector(1 downto 0);
            	--  case    : in  std_logic_vector(? downto 0); voor evt levens etc
            	clk         : in  std_logic;
            	reset       : in  std_logic;
            	x_position  : out std_logic_vector(8 downto 0);
            	y_position  : out std_logic_vector(8 downto 0)
      	);
end component player;

signal clk, reset : std_logic;
signal x_control, y_control : std_logic_vector(1 downto 0);
signal x_position, y_position : std_logic_vector(8 downto 0);

begin

lb11: player port map (x_control, y_control, clk, reset, x_position, y_position);

	clk <= 	'1' after 0 ns,
		'0' after 17 ns when clk /= '0' else '1' after 17 ns;

 	reset <= '1' after 0 ns,
		 '0' after 15 ns;

	x_control <= 	"00" after 0 ns,
			"01" after 100 ns,
			"00" after 500 ns,
			"10" after 700 ns,
			"00" after 900 ns,
			"01" after 1100 ns,
			"00" after 1300 ns,
			"10" after 1500 ns,
			"11" after 1700 ns;

	y_control <= 	"00" after 0 ns,
			"01" after 100 ns,
			"00" after 500 ns,
			"10" after 700 ns,
			"00" after 900 ns,
			"10" after 1100 ns,
			"00" after 1300 ns,
			"01" after 1500 ns,
			"11" after 1700 ns;


end architecture;

