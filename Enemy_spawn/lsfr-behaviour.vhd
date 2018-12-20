library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of lsfr is

component d_ff
      port(d		     : in  std_logic;
           clk       : in  std_logic;
           enable    : in  std_logic;
   	   reset     : in  std_logic;
           q    : out std_logic);
end component;

-- making the signals for output of every flip flop
signal xor_input: std_logic; -- feedback signal
signal out_ff_1, out_ff_2, out_ff_3, out_ff_4: std_logic;	
signal out_ff_5, out_ff_6, out_ff_7, out_ff_8: std_logic;	
signal out_ff_9, out_ff_10, out_ff_11, out_ff_12: std_logic;	
signal out_ff_13, out_ff_14, out_ff_15, out_ff_16: std_logic;	

begin
--feedback
xor_input <= (not out_ff_16) xor (out_ff_15 xor (out_ff_13 xor out_ff_4));
--shifting the bits
d1: d_ff port map (xor_input, clk, enable, reset, out_ff_1);
d2: d_ff port map (out_ff_1, clk, enable, reset, out_ff_2);
d3: d_ff port map (out_ff_2, clk, enable, reset, out_ff_3);
d4: d_ff port map (out_ff_3, clk, enable, reset, out_ff_4);
d5: d_ff port map (out_ff_4, clk, enable, reset, out_ff_5);
d6: d_ff port map (out_ff_5, clk, enable, reset, out_ff_6);
d7: d_ff port map (out_ff_6, clk, enable, reset, out_ff_7);
d8: d_ff port map (out_ff_7, clk, enable, reset, out_ff_8);
d9: d_ff port map (out_ff_8, clk, enable, reset, out_ff_9);
d10: d_ff port map (out_ff_9, clk, enable, reset, out_ff_10);
d11: d_ff port map (out_ff_10, clk, enable, reset, out_ff_11);
d12: d_ff port map (out_ff_11, clk, enable, reset, out_ff_12);
d13: d_ff port map (out_ff_12, clk, enable, reset, out_ff_13);
d14: d_ff port map (out_ff_13, clk, enable, reset, out_ff_14);
d15: d_ff port map (out_ff_14, clk, enable, reset, out_ff_15);
d16: d_ff port map (out_ff_15, clk, enable, reset, out_ff_16);

--output
rand_numb(0) <= out_ff_1;
rand_numb(1) <= out_ff_2;	
rand_numb(2) <= out_ff_3;	
rand_numb(3) <= out_ff_4;	
rand_numb(4) <= out_ff_5;	
rand_numb(5) <= out_ff_6;	
rand_numb(6) <= out_ff_7;	
rand_numb(7) <= out_ff_8;	
rand_numb(8) <= out_ff_9;	
rand_numb(9) <= out_ff_10;	
rand_numb(10) <= out_ff_11;	
rand_numb(11) <= out_ff_12;	
rand_numb(12) <= out_ff_13;	
rand_numb(13) <= out_ff_14;	
rand_numb(14) <= out_ff_15;	
rand_numb(15) <= out_ff_16;	
	
end behaviour;
