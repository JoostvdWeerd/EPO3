library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

ENTITY player is
  
  port  (   x_control   : in  std_logic_vector(1 downto 0);
            y_control   : in  std_logic_vector(1 downto 0);
            --  case    : in  std_logic_vector(? downto 0); voor evt levens etc
            clk         : in  std_logic;
            reset       : in  std_logic;
		frame_ready : in std_logic;
            x_position  : out std_logic_vector(8 downto 0);
            y_position  : out std_logic_vector(8 downto 0)
      );
end player;

ARCHITECTURE fsm of player is
  
  type state_fsm_x is ( start_x, move_right, move_left, still_x);
  type state_fsm_y is ( start_y, move_up, move_down, still_y);
    
signal new_state_x   : state_fsm_x;
signal state_x        : state_fsm_x;
signal new_state_y  : state_fsm_y;
signal state_y      : state_fsm_y;
signal x_pos, x_pos_new, y_pos, y_pos_new : std_logic_vector(8 downto 0);

begin
  process(clk)
  begin
    if (clk'event and clk = '1') then
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
  
  process(state_x, x_control, frame_ready)
  begin
	

    case state_x is
    when start_x =>
      x_pos_new <= "00111111";
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
    end case;
  end process;
  
  process(state_y, y_control, frame_ready)
  begin
	
    case state_y is
    when start_y => 
      y_pos_new <= "01111111";
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
    end case;
  end process;
end architecture fsm;
