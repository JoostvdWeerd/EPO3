library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

entity bullet_controller_tb is
end entity bullet_controller_tb;

architecture arch_bullet_controller_tb of bullet_controller_tb is

component bullet_controller is
	port	( 	clk		: in std_logic;
			reset		: in std_logic;
			shoot		: in std_logic;
			bullet_inscreen1	: in std_logic;
			bullet_inscreen2	: in std_logic;
			bullet_inscreen3	: in std_logic;
			shootb1		: out std_logic;
			shootb2 	: out std_logic;
			shootb3 	: out std_logic
		);
end component bullet_controller;




signal clk, reset, shoot, bullet_inscreen1, bullet_inscreen2, bullet_inscreen3: std_logic;

begin

lb11: bullet_controller port map (clk, reset, shoot, bullet_inscreen1, bullet_inscreen2, bullet_inscreen3);


	clk <= 		'1' after 0 ns,
			'0' after 17 ns when clk /= '0' else '1' after 17 ns;

	reset <=	'1' after 0 ns,
			'0' after 13 ns;

	shoot <=	'0' after 0 ns,
			'1' after 50 ns,
			'0' after 100 ns,
			'1' after 150 ns,
			'0' after 200 ns,
			'1' after 250 ns,
			'0' after 300 ns,
			'1' after 350 ns,
			'0' after 400 ns,
			'1' after 450 ns,
			'0' after 500 ns;


	bullet_inscreen1  <=	'1' after 0 ns,
				'0' after 500 ns;




	bullet_inscreen2 <=	'0' after 0 ns,
				'1' after 180 ns,
				'0' after 500 ns;	



	bullet_inscreen3 <= 	'0' after 0 ns,
				'1' after 300 ns,
				'0' after 500 ns;

end architecture;



