library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

ARCHITECTURE behaviour of enemy is 

    type state_fsm_enemy is (start, placeinscreen, move);
    signal state, new_state : state_fsm_enemy;
    signal x_pos, x_pos_new : std_logic_vector(8 downto 0);
    signal y_pos, y_pos_new : std_logic_vector(8 downto 0);
    
    begin 
    process(clk)
    begin
        if (clk'event and clk = '1') then
           if (reset = '1') then 
              state <= start;
              x_pos <= (others => '0');
              y_pos <= (others => '0');
          else 
              state <= new_state;
              x_pos <= x_pos_new;
              y_pos <= y_pos_new;
          end if;  
        end if; 
    end process;
  
    process (state, collision, spawn,x_pos,y_pos,x_spawn_pos,y_spawn_pos)   
    begin
      case state is 
      when start =>
          x_pos_new <= "111111111";
          y_pos_new <= "111111111"; 
          alive <= '0';
          if (spawn = '1') then 
              new_state <= placeinscreen;
          else 
              new_state <= start;
          end if;
          
      when placeinscreen =>
          x_pos_new <= x_spawn_pos;
          y_pos_new <= y_spawn_pos; 
          alive <= '1';
          new_state <= move;
    
      when move =>
          x_pos_new <= x_pos - "000000001" ;
          y_pos_new <= y_pos; 
          alive <= '0';
          if (collision = '1') then 
              new_state <= start;
          else 
              new_state <= move;
          end if;
      
      when others=>
          x_pos_new <= "111111111";
          y_pos_new <= "000011111"; 
          alive <= '0';
          if (spawn = '1') then 
              new_state <= placeinscreen;
          else 
              new_state <= start;
          end if;
      end case;
      
    end process;
    
    x_position <= x_pos;
    y_position <= y_pos;
    
END ARCHITECTURE behaviour;

