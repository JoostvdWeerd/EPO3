library IEEE;
use IEEE.std_logic_1164.ALL;
-- drawing takes the coordinates of the current pixel 
-- and the coordinates of the object it is supposed to 
-- draw as input to output rgb values
entity drawing is
   port(clk      : in  std_logic;
        reset    : in  std_logic;
        x        : in  std_logic_vector(8 downto 0);
        y        : in  std_logic_vector(9 downto 0);
        x_object : in  std_logic_vector(8 downto 0);
        y_object : in  std_logic_vector(8 downto 0);
        R_object : out std_logic;
        G_object : out std_logic;
        B_object : out std_logic);
end drawing;

