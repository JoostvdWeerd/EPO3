library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity bullet_fsm_tb is
end entity bullet_fsm_tb;

architecture arch_bullet_fsm_tb of bullet_fsm_tb is

component bullet is
	port	(	clk		:	in std_logic;
			reset		: 	in std_logic;
			x_position	:	in std_logic_vector(8 downto 0);
			y_position	:	in std_logic_vector(8 downto 0);
			shoot		:	in std_logic;
			frame_ready	:	in std_logic;
			Collision	: 	in std_logic;
			bullet_state	:	out std_logic;
			x_position_bullet :	out std_logic_vector(8 downto 0);
			y_position_bullet : 	out std_logic_vector(7 downto 0)
		);
end component bullet;

signal Collision	: std_logic;
signal clk, reset	: std_logic;
signal x_position	: std_logic_vector(8 downto 0);
signal y_position	: std_logic_vector(8 downto 0);
signal shoot, frame_ready	: std_logic;

begin

lb11: bullet port map (clk, reset, x_position, y_position, shoot, frame_ready, Collision);

	clk <=		'1' after 0 ns,
			'0' after 17 ns when clk /= '0' else '1' after 17 ns;

	reset <= 	'1' after 0 ns,
			'0' after 13 ns;

	x_position <= 	"000111111" after 0 ns;
	y_position <= 	"100000000"  after 0 ns;

	shoot	   <=	'0' after 0 ns,
			'1' after 20 ns;

	frame_ready <= 	'0' after 0 ns,
			'1' after 30 ns,
			'0' after 70 ns,
			'1' after 100 ns,
			'0' after 120 ns,
			'1' after 150 ns;
	collision <= 	'0' after 0 ns,
			'1' after 200 ns;

end architecture;