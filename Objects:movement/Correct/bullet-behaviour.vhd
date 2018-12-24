library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

ARCHITECTURE behaviour of bullet is 

    type state_fsm_enemy is (start, placeinscreen, move);
    signal state, new_state : state_fsm_enemy;
    signal x_pos, x_pos_new : std_logic_vector(8 downto 0);
    signal y_pos, y_pos_new : std_logic_vector(8 downto 0);
    
    begin 
    process(frame_ready)
    begin
        if (frame_ready'event and frame_ready = '1') then
           if (reset = '1') then 
              state <= start;
              x_pos <= (others => '0');
              y_pos <= (others => '0');
          else 
              state <= new_state;
	      x_bullet <= x_pos;
    	      y_bullet <= y_pos;
              x_pos <= x_pos_new;
              y_pos <= y_pos_new;

          end if;  
        end if; 
    end process;
  
    process (frame_ready)   
    begin
      case state is 
      when start =>
          x_pos_new <= "111111111";
          y_pos_new <= "111111111"; 
          bullet_state <= '0';
          if (shoot = '1') then 
              new_state <= placeinscreen;
          else 
              new_state <= start;
          end if;
          
      when placeinscreen =>
          x_pos_new <= x_position;
          y_pos_new <= y_position; 
          bullet_state <= '1';
          new_state <= move;
    
      when move =>
          x_pos_new <= x_pos + "000000001" ;
          y_pos_new <= y_pos; 
          bullet_state <= '1';
          if (collision = '1') then 
              new_state <= start;
          else 
              new_state <= move;
          end if;
      
      when others=>
          x_pos_new <= "111111111";
          y_pos_new <= "000011111"; 
          bullet_state <= '0';
          if (shoot = '1') then 
              new_state <= placeinscreen;
          else 
              new_state <= start;
          end if;
      end case;
      
    end process;
    
END ARCHITECTURE behaviour;

