library IEEE;
use IEEE.std_logic_1164.ALL;

entity toplevel_spawn is
   port(clk         : in  std_logic;
        reset       : in  std_logic;
        enable      : in  std_logic;
        enemy_1     : in  std_logic;
        enemy_2     : in  std_logic;
        enemy_3     : in  std_logic;
        enemy_4     : in  std_logic;
        enemy_5     : in  std_logic;
        enemy_6     : in  std_logic;
        enemy_o_y_1 : out std_logic_vector(8 downto 0);
        enemy_o_y_2 : out std_logic_vector(8 downto 0);
        enemy_o_y_3 : out std_logic_vector(8 downto 0);
        enemy_o_y_4 : out std_logic_vector(8 downto 0);
        enemy_o_y_5 : out std_logic_vector(8 downto 0);
        enemy_o_y_6 : out std_logic_vector(8 downto 0);
        enemy_o_l_1 : out std_logic;
        enemy_o_l_2 : out std_logic;
        enemy_o_l_3 : out std_logic;
        enemy_o_l_4 : out std_logic;
        enemy_o_l_5 : out std_logic;
        enemy_o_l_6 : out std_logic);
end toplevel_spawn;

