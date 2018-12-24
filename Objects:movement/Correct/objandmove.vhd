library IEEE;
use IEEE.std_logic_1164.ALL;

entity objandmove is
   port(frame_ready		   		: in  std_logic;    			-- clk
        reset      				: in  std_logic;		  	-- reset 
        x_control  				: in  std_logic_vector(1 downto 0); --player
        y_control  				: in  std_logic_vector(1 downto 0);	--player
        shoot      				: in  std_logic;		--control_bullet
        spawn1      				: in  std_logic;		--enemy1
        spawn2     				: in  std_logic;		--enemy2
        spawn3      				: in  std_logic;		--enemy3
        collisionb1 				: in  std_logic;		--enemy1
        collisionb2 				: in  std_logic;		--enemy2
        collisionb3  				: in  std_logic;		--enemy3
        collisione1 				: in  std_logic;		--enemy1
        collisione2 				: in  std_logic;		--enemy2
        collisione3  				: in  std_logic;		--enemy3
        spawn1_x   				: in  std_logic_vector(8 downto 0); --enemy1
        spawn1_y   				: in  std_logic_vector(8 downto 0); --enemy1
	spawn2_x   			: in  std_logic_vector(8 downto 0); --enemy2
        spawn2_y   				: in  std_logic_vector(8 downto 0); --enemy2
	spawn3_x   			: in  std_logic_vector(8 downto 0); --enemy3
        spawn3_y   				: in  std_logic_vector(8 downto 0); --enemy3
        x_position   				: out std_logic_vector(8 downto 0); --player
        y_position   				: out std_logic_vector(8 downto 0); --player
        bullet_xposition1  				: out std_logic_vector(8 downto 0); --bullet1
        bullet_yposition1  				: out std_logic_vector(8 downto 0); --bullet1
        bullet_xposition2  				: out std_logic_vector(8 downto 0); --bullet2
        bullet_yposition2  				: out std_logic_vector(8 downto 0); --bullet2
        bullet_xposition3  				: out std_logic_vector(8 downto 0); --bullet3
        bullet_yposition3  				: out std_logic_vector(8 downto 0); --bullet3
        enemy1_xposition  	 			: out std_logic_vector(8 downto 0); --enemy1
        enemy1_yposition   				: out std_logic_vector(8 downto 0); --enemy1
        enemy2_xposition  	 			: out std_logic_vector(8 downto 0); --enemy2
        enemy2_yposition   				: out std_logic_vector(8 downto 0); --enemy2
        enemy3_xposition  	 			: out std_logic_vector(8 downto 0); --enemy3
        enemy3_yposition   				: out std_logic_vector(8 downto 0); --enemy3
        alive1      				: out std_logic; --enemy1
        alive2     				: out std_logic; --enemy2
        alive3      				: out std_logic); --enemy3
end objandmove;

