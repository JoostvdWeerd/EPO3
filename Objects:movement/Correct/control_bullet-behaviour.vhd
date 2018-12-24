library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of control_bullet is
	
	type shootstate is (dontshoot, shoot1, shoot2, shoot3);
	signal state, new_state : shootstate;
	signal b1, b2, b3 : std_logic;
begin

process(frame_ready)
    begin
        if (frame_ready'event and frame_ready = '1') then
           if (reset = '1') then 
              state <= dontshoot;
          else 
              		state <= new_state;
		shootb1 <= b1;
		shootb2	<= b2;
		shootb3 <= b3;
          end if;  
        end if; 
end process;

process(frame_ready)
    begin
	case state is 
	when dontshoot =>
		b1 <= '0';
		b2 <= '0';
		b3 <= '0';

	if  (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then 
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot3;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= dontshoot;
	else 
		new_state <= dontshoot;
	end if; 

	when shoot1 =>
		b1 <= '1';
		b2 <= '0';
		b3 <= '0';

	if  (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then 
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot3;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= dontshoot;
	else 
		new_state <= dontshoot;
	end if; 

	when shoot2 =>
		b1 <= '0';
		b2 <= '1';
		b3 <= '0';

	if  (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then 
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot3;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= dontshoot;
	else 
		new_state <= dontshoot;
	end if; 

	when shoot3 =>
		b1 <= '0';
		b2 <= '0';
		b3 <= '1';

	if  (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then 
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '0' AND shoot = '1') then
		new_state <= shoot1;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '0' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot2;
	elsif (bullet_inscreen_3 = '0' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= shoot3;
	elsif (bullet_inscreen_3 = '1' AND bullet_inscreen_2 = '1' AND bullet_inscreen_1 = '1' AND shoot = '1') then
		new_state <= dontshoot;
	else 
		new_state <= dontshoot;
	end if; 
	end case;
end process;

end behaviour;

