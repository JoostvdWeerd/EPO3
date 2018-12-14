library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour_top_level_tb of top_level_tb is
   component top_level
     port( clk, reset : in std_logic ;
   	   y_0   : in  std_logic_vector(8 downto 0);
           y_1   : in  std_logic_vector(8 downto 0);
           y_2   : in  std_logic_vector(8 downto 0);
           y_3   : in  std_logic_vector(8 downto 0);
           y_4   : in  std_logic_vector(8 downto 0);
           y_5   : in  std_logic_vector(8 downto 0);
           y_6   : in  std_logic_vector(8 downto 0);
           y_7   : in  std_logic_vector(8 downto 0);
           y_8   : in  std_logic_vector(8 downto 0);
           y_9   : in  std_logic_vector(8 downto 0);
           y_10  : in  std_logic_vector(8 downto 0);
           y_11  : in  std_logic_vector(8 downto 0);
           y_12  : in  std_logic_vector(8 downto 0);
           y_13  : in  std_logic_vector(8 downto 0);
           y_14  : in  std_logic_vector(8 downto 0);
           y_15  : in  std_logic_vector(8 downto 0);
           x_0   : in  std_logic_vector(8 downto 0);
           x_1   : in  std_logic_vector(8 downto 0);
           x_2   : in  std_logic_vector(8 downto 0);
           x_3   : in  std_logic_vector(8 downto 0);
           x_4   : in  std_logic_vector(8 downto 0);
           x_5   : in  std_logic_vector(8 downto 0);
           x_6   : in  std_logic_vector(8 downto 0);
           x_7   : in  std_logic_vector(8 downto 0);
           x_8   : in  std_logic_vector(8 downto 0);
           x_9   : in  std_logic_vector(8 downto 0);
           x_10  : in  std_logic_vector(8 downto 0);
           x_11  : in  std_logic_vector(8 downto 0);
           x_12  : in  std_logic_vector(8 downto 0);
           x_13  : in  std_logic_vector(8 downto 0);
           x_14  : in  std_logic_vector(8 downto 0);
           x_15  : in  std_logic_vector(8 downto 0);
	   main_enable: in  std_logic;
	   done  : out std_logic;
   	   col   : out std_logic_vector(15 downto 0)
   	);
   end component;
   signal clk, reset, main_enable, done : std_logic;
   signal y_0   : std_logic_vector(8 downto 0);
   signal y_1   : std_logic_vector(8 downto 0);
   signal y_2   : std_logic_vector(8 downto 0);
   signal y_3   : std_logic_vector(8 downto 0);
   signal y_4   : std_logic_vector(8 downto 0);
   signal y_5   : std_logic_vector(8 downto 0);
   signal y_6   : std_logic_vector(8 downto 0);
   signal y_7   : std_logic_vector(8 downto 0);
   signal y_8   : std_logic_vector(8 downto 0);
   signal y_9   : std_logic_vector(8 downto 0);
   signal y_10  : std_logic_vector(8 downto 0);
   signal y_11  : std_logic_vector(8 downto 0);
   signal y_12  : std_logic_vector(8 downto 0);
   signal y_13  : std_logic_vector(8 downto 0);
   signal y_14  : std_logic_vector(8 downto 0);
   signal y_15  : std_logic_vector(8 downto 0);
   signal x_0   : std_logic_vector(8 downto 0);
   signal x_1   : std_logic_vector(8 downto 0);
   signal x_2   : std_logic_vector(8 downto 0);
   signal x_3   : std_logic_vector(8 downto 0);
   signal x_4   : std_logic_vector(8 downto 0);
   signal x_5   : std_logic_vector(8 downto 0);
   signal x_6   : std_logic_vector(8 downto 0);
   signal x_7   : std_logic_vector(8 downto 0);
   signal x_8   : std_logic_vector(8 downto 0);
   signal x_9   : std_logic_vector(8 downto 0);
   signal x_10  : std_logic_vector(8 downto 0);
   signal x_11  : std_logic_vector(8 downto 0);
   signal x_12  : std_logic_vector(8 downto 0);
   signal x_13  : std_logic_vector(8 downto 0);
   signal x_14  : std_logic_vector(8 downto 0);
   signal x_15  : std_logic_vector(8 downto 0);
   signal col   : std_logic_vector(15 downto 0);
begin
   clk <= '1' after 0 ns,
          '0' after 80 ns when clk /= '0' else '1' after 80 ns;
-- clk <= '0' after 0 ns;
   reset <='1' after 0 ns, 
	   '0' after 310 ns,
	   '1' after 15000 ns, 
	   '0' after 15310 ns,
	   '1' after 30000 ns,
	   '0' after 30310 ns;
   main_enable <='1' after 0 ns, 
	   '0' after 1000 ns,
	   '1' after 15000 ns, 
	   '0' after 16000 ns,
	   '1' after 30000 ns,
	   '0' after 31000 ns;
   y_0 <=  std_logic_vector(to_unsigned(50,9)) after 0 ns,
           std_logic_vector(to_unsigned(240,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(150,9)) after 30000 ns; 
   y_1 <=  std_logic_vector(to_unsigned(200,9)) after 0 ns,
           std_logic_vector(to_unsigned(80,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(60,9)) after 30000 ns;
   y_2 <=  std_logic_vector(to_unsigned(50,9)) after 0 ns,
           std_logic_vector(to_unsigned(85,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(80,9)) after 30000 ns; 
   y_3 <=  std_logic_vector(to_unsigned(75,9)) after 0 ns, 
           std_logic_vector(to_unsigned(100,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(100,9)) after 30000 ns; 
   y_4 <=  std_logic_vector(to_unsigned(200,9)) after 0 ns,
           std_logic_vector(to_unsigned(60,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(120,9)) after 30000 ns; 
   y_5 <=  std_logic_vector(to_unsigned(220,9)) after 0 ns, 
           std_logic_vector(to_unsigned(200,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(240,9)) after 30000 ns; 
   y_6 <=  std_logic_vector(to_unsigned(195,9)) after 0 ns, 
           std_logic_vector(to_unsigned(60,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(80,9)) after 30000 ns; 
   y_7 <=  std_logic_vector(to_unsigned(55,9)) after 0 ns, 
           std_logic_vector(to_unsigned(60,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(80,9)) after 30000 ns; 
   y_8 <=  std_logic_vector(to_unsigned(400,9)) after 0 ns, 
           std_logic_vector(to_unsigned(65,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(100,9)) after 30000 ns; 
   y_9 <=  std_logic_vector(to_unsigned(240,9)) after 0 ns, 
           std_logic_vector(to_unsigned(35,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(400,9)) after 30000 ns; 
   y_10 <= std_logic_vector(to_unsigned(430,9)) after 0 ns, 
           std_logic_vector(to_unsigned(400,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(220,9)) after 30000 ns;
   y_11 <= std_logic_vector(to_unsigned(80,9)) after 0 ns, 
           std_logic_vector(to_unsigned(235,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(240,9)) after 30000 ns; 
   y_12 <= std_logic_vector(to_unsigned(20,9)) after 0 ns, 
           std_logic_vector(to_unsigned(200,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(80,9)) after 30000 ns; 
   y_13 <= std_logic_vector(to_unsigned(70,9)) after 0 ns, 
           std_logic_vector(to_unsigned(220,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(120,9)) after 30000 ns; 
   y_14 <= std_logic_vector(to_unsigned(50,9)) after 0 ns, 
           std_logic_vector(to_unsigned(280,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(160,9)) after 30000 ns; 
   y_15 <= std_logic_vector(to_unsigned(55,9)) after 0 ns,
           std_logic_vector(to_unsigned(200,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(200,9)) after 30000 ns; 

   x_0 <=  std_logic_vector(to_unsigned(50,9)) after 0 ns,
           std_logic_vector(to_unsigned(100,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(50,9)) after 30000 ns; 
   x_1 <=  std_logic_vector(to_unsigned(200,9)) after 0 ns,
           std_logic_vector(to_unsigned(125,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(150,9)) after 30000 ns;
   x_2 <=  std_logic_vector(to_unsigned(5,9)) after 0 ns,
           std_logic_vector(to_unsigned(130,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(150,9)) after 30000 ns; 
   x_3 <=  std_logic_vector(to_unsigned(300,9)) after 0 ns,
           std_logic_vector(to_unsigned(318,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(150,9)) after 30000 ns; 
   x_4 <=  std_logic_vector(to_unsigned(50,9)) after 0 ns,
           std_logic_vector(to_unsigned(50,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(80,9)) after 30000 ns; 
   x_5 <=  std_logic_vector(to_unsigned(70,9)) after 0 ns,
           std_logic_vector(to_unsigned(0,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(80,9)) after 30000 ns; 
   x_6 <=  std_logic_vector(to_unsigned(195,9)) after 0 ns,
           std_logic_vector(to_unsigned(46,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(320,9)) after 30000 ns; 
   x_7 <=  std_logic_vector(to_unsigned(10,9)) after 0 ns,
           std_logic_vector(to_unsigned(130,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(140,9)) after 30000 ns; 
   x_8 <=  std_logic_vector(to_unsigned(250,9)) after 0 ns,
           std_logic_vector(to_unsigned(135,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(140,9)) after 30000 ns; 
   x_9 <=  std_logic_vector(to_unsigned(330,9)) after 0 ns,
           std_logic_vector(to_unsigned(120,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(0,9)) after 30000 ns; 
   x_10 <= std_logic_vector(to_unsigned(100,9)) after 0 ns,
           std_logic_vector(to_unsigned(352,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(85,9)) after 30000 ns;
   x_11 <= std_logic_vector(to_unsigned(305,9)) after 0 ns,
           std_logic_vector(to_unsigned(95,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(320,9)) after 30000 ns; 
   x_12 <= std_logic_vector(to_unsigned(250,9)) after 0 ns,
           std_logic_vector(to_unsigned(200,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(160,9)) after 30000 ns; 
   x_13 <= std_logic_vector(to_unsigned(250,9)) after 0 ns,
           std_logic_vector(to_unsigned(220,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(160,9)) after 30000 ns; 
   x_14 <= std_logic_vector(to_unsigned(230,9)) after 0 ns,
           std_logic_vector(to_unsigned(230,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(160,9)) after 30000 ns; 
   x_15 <= std_logic_vector(to_unsigned(55,9)) after 0 ns,
           std_logic_vector(to_unsigned(315,9)) after 15000 ns, 
           std_logic_vector(to_unsigned(160,9)) after 30000 ns; 
lbl1: top_level port map(clk, reset, y_0, y_1, y_2, y_3, y_4, y_5, y_6, y_7, y_8, y_9, y_10, y_11, y_12, y_13, y_14, y_15, x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, main_enable, done, col);
end behaviour_top_level_tb;

