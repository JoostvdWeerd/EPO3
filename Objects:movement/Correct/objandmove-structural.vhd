library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;


architecture structural of objandmove is

	component player
		port(	reset	    : in 	std_logic;
        			frame_ready : in  std_logic;
        			x_control   : in  std_logic_vector(1 downto 0);
        			y_control   : in  std_logic_vector(1 downto 0);
        			x_position  : out std_logic_vector(8 downto 0);
        			y_position  : out std_logic_vector(8 downto 0)
		);
	end component;

	component enemyone 
		port(	frame_ready : in 	std_logic;	
			reset       : in  std_logic;
		        spawn       : in  std_logic;
		        collision   : in  std_logic;
		        x_spawn_pos : in  std_logic_vector(8 downto 0);
		        y_spawn_pos : in  std_logic_vector(8 downto 0);
		        alive       : out std_logic;
		        enemy_xposition  : out std_logic_vector(8 downto 0);
		        enemy_yposition  : out std_logic_vector(8 downto 0)
		);
	end component;

	component bullet
		 port(	frame_ready  : in  std_logic;
		        reset        : in  std_logic;
		        shoot        : in  std_logic;
		        collision    : in  std_logic;
		        x_position   : in  std_logic_vector(8 downto 0);
		        y_position   : in  std_logic_vector(8 downto 0);
		        bullet_state : out std_logic;
		        x_bullet     : out std_logic_vector(8 downto 0);
		        y_bullet     : out std_logic_vector(8 downto 0)
		);
	end component;
		
	component control_bullet
		port(	frame_ready			: in std_logic;
			reset			: in std_logic;
			shoot         			: in  std_logic;
			bullet_inscreen_1			: in  std_logic;
			bullet_inscreen_2			: in std_logic;
			bullet_inscreen_3			: in std_logic;
		        shootb1       : out std_logic;
        			shootb2       : out std_logic;
        			shootb3       : out std_logic
		);
	end component;

	signal	player_xposition : std_logic_vector(8 downto 0);
	signal	player_yposition : std_logic_vector(8 downto 0);
	
	signal 	bullet_state1, bullet_state2, bullet_state3					: std_logic;
	signal 	shoot_bullet1, shoot_bullet2, shoot_bullet3					: std_logic;

begin
	player_movement :	player 			port map	(reset, frame_ready, x_control, y_control, player_xposition, player_yposition);
	enemy_1		: enemyone 		port map	(frame_ready, reset, spawn1, collisione1, spawn1_x, spawn1_y, alive1, enemy1_xposition, enemy1_yposition);
	enemy_2		: enemyone 		port map	(frame_ready, reset, spawn2, collisione2, spawn2_x, spawn2_y, alive2, enemy2_xposition, enemy2_yposition);
	enemy_3		: enemyone 		port map	(frame_ready, reset, spawn3, collisione3, spawn3_x, spawn3_y, alive3, enemy3_xposition, enemy3_yposition);
	bullet1		: bullet 		port map	(frame_ready, reset, shoot_bullet1, collisionb1, player_xposition, player_yposition, bullet_state1, bullet_xposition1, bullet_yposition1);
	bullet2		: bullet 		port map	(frame_ready, reset, shoot_bullet2, collisionb2, player_xposition, player_yposition, bullet_state2, bullet_xposition2, bullet_yposition2);
	bullet3		: bullet 		port map	(frame_ready, reset, shoot_bullet3, collisionb3, player_xposition, player_yposition, bullet_state3, bullet_xposition3, bullet_yposition3);
	bullet_controller : control_bullet 					port map (frame_ready, reset, shoot, bullet_state1, bullet_state2, bullet_state3, shoot_bullet1, shoot_bullet2, shoot_bullet3);
	x_position <= player_xposition;
	y_position <= player_xposition;

end structural;

