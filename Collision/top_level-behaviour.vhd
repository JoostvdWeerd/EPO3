library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour_top_level of top_level is
   component collision is
      port( 
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
	c_1 : in  std_logic_vector(3 downto 0);
	c_2 : in  std_logic_vector(3 downto 0);
	cnt_1_enable : out std_logic;
	cnt_2_reset : out std_logic;
	start_value: out std_logic_vector(3 downto 0);
        clk   : in  std_logic;
        reset : in  std_logic;
        col   : out std_logic_vector(15 downto 0);
	main_enable: in  std_logic;
	done  : out std_logic
);
   end component collision ;

   component counter_one is
	port(
	clk    : in  std_logic;
        reset  : in  std_logic;
        enable : in  std_logic;
        count  : out std_logic_vector(3 downto 0));
   end component counter_one ;

   component counter_two is
      port(
	clk     : in  std_logic;
	reset   : in  std_logic;
	reset_2 : in  std_logic;
	start_value: in std_logic_vector(3 downto 0);
	count   : out std_logic_vector(3 downto 0));
   end component;

signal reset_2_s, enable_s : std_logic;
signal count_1_s, count_2_s: std_logic_vector(3 downto 0);
signal col_s : std_logic_vector(15 downto 0);
signal start_value_s : std_logic_vector(3 downto 0);


begin

L1: collision	port map( y_0, y_1, y_2, y_3, y_4, y_5, y_6, y_7, y_8, y_9, y_10, y_11, y_12, y_13, y_14, y_15, 
			x_0, x_1, x_2, x_3, x_4, x_5, x_6, x_7, x_8, x_9, x_10, x_11, x_12, x_13, x_14, x_15, 
			count_1_s, 
			count_2_s,  
			enable_s,  
			reset_2_s,
			start_value_s,  
			clk,  
			reset,  
			col_s,
			main_enable,
			done);

L2: counter_one port map(clk, reset, enable_s, count_1_s);

L3: counter_two port map(clk, reset, reset_2_s, start_value_s, count_2_s);

L4: col <= col_s;

-- connect output ports to internal signals


end behaviour_top_level;

