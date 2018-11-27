library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of display_tb is
   component display
      port(clk       : in  std_logic;
   	   reset	    : in  std_logic;
           hsync     : out std_logic;
           vsync     : out std_logic);
   end component;
   signal clk       : std_logic;
   signal reset	    : std_logic;
   signal hsync     : std_logic;
   signal vsync     : std_logic;
begin
test: display port map (clk, reset, hsync, vsync);
   clk <= '1' after 0 ns,
        '0' after 40 ns when clk /= '0' else '1' after 40 ns;
   reset <= '1' after 0 ns, '0' after 200 ns;
end behaviour;

