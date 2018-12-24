library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

ARCHITECTURE behavior of player is
  
  type state_fsm_x is ( start_x, move_right, move_left, still_x);
  type state_fsm_y is ( start_y, move_up, move_down, still_y);
    
signal new_state_x  : state_fsm_x;
signal state_x      : state_fsm_x;
signal new_state_y  : state_fsm_y;
signal state_y      : state_fsm_y;
signal x_pos, x_pos_new, y_pos, y_pos_new : std_logic_vector(8 downto 0);

begin
  process(frame_ready)
  begin
	if (frame_ready'event and frame_ready = '1') then
	      if (reset = '1') then
        		state_x <= start_x;
		state_y <= start_y;
      	      else
        		state_x <= new_state_x;
		state_y <= new_state_y;
		x_position <= x_pos_new;
		y_position <= y_pos_new;
		x_pos <= x_pos_new;
		y_pos <= y_pos_new;
      	      end if;
	end if;
  
  end process;
  
  process(frame_ready)
  begin
	

    case state_x is
    when start_x =>
      x_pos_new <= "000111111";
      if (x_control = "01") then
        new_state_x <= move_right;
      elsif ( x_control = "10") then
        new_state_x <= move_left;
      else 
        new_state_x <= still_x;
      end if;
      
    when move_right =>
	
      x_pos_new <= x_pos + "00000001";
	
      if (x_control = "01") then
        new_state_x <= move_right;
      elsif ( x_control = "10") then
        new_state_x <= move_left;
      else 
        new_state_x <= still_x;
      end if;
      
    when move_left =>
	
      x_pos_new <= x_pos - "00000001";
	
      if (x_control = "01") then
        new_state_x <= move_right;
      elsif ( x_control = "10") then
        new_state_x <= move_left;
      else 
        new_state_x <= still_x;
      end if;
      
    when still_x =>
      x_pos_new <= x_pos;
      if (x_control = "01") then
        new_state_x <= move_right;
      elsif ( x_control = "10") then
        new_state_x <= move_left;
      else 
        new_state_x <= still_x;
      end if;

    when others =>
	new_state_x <= start_x;
	x_pos_new <= "000111111";

    end case;
  end process;
  
  process(frame_ready)
  begin
	
    case state_y is
    when start_y => 
      y_pos_new <= "001111111";
      if (y_control = "01") then
        new_state_y <= move_up;
      elsif ( y_control = "10") then
        new_state_y <= move_down;
      else 
        new_state_y <= still_y;
      end if;
      
    when move_up =>
	
      y_pos_new <= y_pos + "00000001";
	
      if (y_control = "01") then
        new_state_y <= move_up;
      elsif ( y_control = "10") then
        new_state_y <= move_down;
      else 
        new_state_y <= still_y;
      end if;
      
    when move_down =>
	
      y_pos_new <= y_pos - "00000001";
	
      if (y_control = "01") then
        new_state_y <= move_up;
      elsif ( y_control = "10") then
        new_state_y <= move_down;
      else 
        new_state_y <= still_y;
      end if;
      
    when still_y => 
      y_pos_new <= y_pos;
      if (y_control = "01") then
        new_state_y <= move_up;
      elsif ( y_control = "10") then
        new_state_y <= move_down;
      else 
        new_state_y <= still_y;
      end if;

    when others =>
	new_state_y <= start_y;
	y_pos_new <= "001111111";
    end case;

  end process;

end architecture;

