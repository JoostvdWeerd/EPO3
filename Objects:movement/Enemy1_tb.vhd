Library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

ENTITY enemy_one_tb is 
END ENTITY;

architecture arch_enemy_one of enemy_one_tb is
component enemy_one is 
        port (clk                   : in std_logic; 
              reset                 : in std_logic;
              x_spawn_pos           : in std_logic_vector(8 downto 0);
              y_spawn_pos           : in std_logic_vector(8 downto 0);
              spawn                 : in std_logic;
              collision             : in std_logic;
              x_position            : out std_logic_vector(8 downto 0);
              y_position            : out std_logic_vector(8 downto 0);
              alive                 : out std_logic   
              );
end component;

signal clk, reset, spawn, collision, alive : std_logic;
signal x_spawn_pos, y_spawn_pos, x_position, y_position : std_logic_vector(8 downto 0);

begin 
lbl1: enemy_one port map (clk, reset, x_spawn_pos, y_spawn_pos, spawn, collision, x_position, y_position , alive);
              
        clk <=  '0' after 0 ns, 
                '1' after 15 ns when clk /= '1' else '0' after 15 ns;
             
        reset <= '1' after 0 ns, '0' after 40 ns;
        
        x_spawn_pos <= "011111111"; 
        y_spawn_pos <= "000011111";
        
        spawn <= '0' after 0 ns, '1' after 50 ns, '0' after 100 ns;
        
        collision <= '0' after 0 ns, '1' after 1000 ns;            
              
end architecture;