library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of toplevel_spawn is

--initialising previous mentioned components

   component spawn_timer
      port(in_1	      : in  std_logic;
   	   in_2	      : in  std_logic;
   	   in_3	      : in  std_logic;
   	   in_4	      : in  std_logic;
	   in_5	      : in  std_logic;
	   in_6	      : in  std_logic;
	   in_7	      : in  std_logic;
           clk        : in  std_logic;
           enable     : in  std_logic;
           prev_state : in  std_logic;
           decider    : out std_logic);
   end component;

   component lsfr
      port(clk         : in  std_logic;
	   enable	     : in  std_logic;
   	   reset	      : in  std_logic;
           rand_numb   : out std_logic_vector(15 downto 0));
   end component;

   component y_decider
	port(clk          : in  std_logic;
        enable       : in  std_logic;
        iny_1         : in  std_logic;
        iny_2         : in  std_logic;
        iny_3         : in  std_logic;
        iny_4         : in  std_logic;
        iny_5         : in  std_logic;
        iny_6         : in  std_logic;
        iny_7         : in  std_logic;
        iny_8         : in  std_logic;
        y_coordinaat : out std_logic_vector(8 downto 0));
   end component;

signal rand_numb: std_logic_vector(15 downto 0);

begin
--creating the random number
rngg: lsfr port map (clk, enable, reset, rand_numb);
-- giving every enemy his own spawn decider and y coordinate generator (assuming 6 enemies for now)
en11: spawn_timer port map (rand_numb(0), rand_numb(2), rand_numb(4), rand_numb(6), rand_numb(8), rand_numb(10), rand_numb(12), clk, enable, enemy_1, enemy_o_l_1);
en12: y_decider port map(clk, enable, rand_numb(1), rand_numb(3), rand_numb(5), rand_numb(7), rand_numb(9), rand_numb(11), rand_numb(13), rand_numb(15), enemy_o_y_1);

en21: spawn_timer port map (rand_numb(1), rand_numb(2), rand_numb(5), rand_numb(7), rand_numb(10), rand_numb(11), rand_numb(13), clk, enable, enemy_2, enemy_o_l_2);
en22: y_decider port map(clk, enable, rand_numb(1), rand_numb(2), rand_numb(3), rand_numb(7), rand_numb(8), rand_numb(9), rand_numb(10), rand_numb(10), enemy_o_y_2);

en31: spawn_timer port map (rand_numb(0), rand_numb(1), rand_numb(5), rand_numb(9), rand_numb(10), rand_numb(11), rand_numb(15), clk, enable, enemy_3, enemy_o_l_3);
en32: y_decider port map(clk, enable, rand_numb(5), rand_numb(6), rand_numb(7), rand_numb(11), rand_numb(12), rand_numb(13), rand_numb(14), rand_numb(15), enemy_o_y_3);

en41: spawn_timer port map (rand_numb(3), rand_numb(4), rand_numb(6), rand_numb(7), rand_numb(1), rand_numb(9), rand_numb(15), clk, enable, enemy_4, enemy_o_l_4);
en42: y_decider port map(clk, enable, rand_numb(2), rand_numb(4), rand_numb(5), rand_numb(7), rand_numb(10), rand_numb(11), rand_numb(14), rand_numb(13), enemy_o_y_4);

en51: spawn_timer port map (rand_numb(5), rand_numb(6), rand_numb(7), rand_numb(8), rand_numb(1), rand_numb(0), rand_numb(13), clk, enable, enemy_5, enemy_o_l_5);
en52: y_decider port map(clk, enable, rand_numb(0), rand_numb(2), rand_numb(3), rand_numb(5), rand_numb(9), rand_numb(12), rand_numb(13), rand_numb(10), enemy_o_y_5);

en61: spawn_timer port map (rand_numb(4), rand_numb(8), rand_numb(6), rand_numb(14), rand_numb(11), rand_numb(9), rand_numb(0), clk, enable, enemy_6, enemy_o_l_6);
en62: y_decider port map(clk, enable, rand_numb(10), rand_numb(14), rand_numb(13), rand_numb(7), rand_numb(6), rand_numb(11), rand_numb(2), rand_numb(0), enemy_o_y_6);


end behaviour;

