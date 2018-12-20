library IEEE;
use IEEE.std_logic_1164.ALL;

entity y_decider is
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
end y_decider;

