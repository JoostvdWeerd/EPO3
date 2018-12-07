library IEEE;
use IEEE.std_logic_1164.ALL;

--colour entity is synchronized, thus has clock and reset. 
--Other ports are inputs for the player, bullets and enemies 
--and an output to the VGA.
entity colour is
   port(clk   : in  std_logic;
        reset : in  std_logic;
        pl    : in  std_logic;
        bl1   : in  std_logic;
        bl2   : in  std_logic;
        bl3   : in  std_logic;
        en1   : in  std_logic;
        en2   : in  std_logic;
        en3   : in  std_logic;
        en4   : in  std_logic;
        en5   : in  std_logic;
        en6   : in  std_logic;
        colour : out std_logic);
end colour;

