library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of control_bullet is

begin
process (bullet_inscreen_1, shoot)
begin

if  (bullet_inscreen_3 = '0' && bullet_inscreen_2 = '0' && bullet_inscreen_1 = '0' && shoot = '1') then 
	shootb1 <= '1';     
      	shootb2 <= '0';
        shootb3 <= '0';
elsif (bullet_inscreen_3 = '0' && bullet_inscreen_2 = '0' && bullet_inscreen_1 = '1' && shoot = '1') then
	 shootb1 <= '0';     
         shootb2 <= '1';
        	shootb3 <= '0';
elsif (bullet_inscreen_3 = '0' && bullet_inscreen_2 = '1' && bullet_inscreen_1 = '0' && shoot = '1') then
	 shootb1 <= '1';     
         shootb2 <= '0';
        	shootb3 <= '0';
elsif (bullet_inscreen_3 = '0' && bullet_inscreen_2 = '1' && bullet_inscreen_1 = '1' && shoot = '1') then
	 shootb1 <= '0';     
         shootb2 <= '0';
        	shootb3 <= '1';
elsif (bullet_inscreen_3 = '1' && bullet_inscreen_2 = '0' && bullet_inscreen_1 = '0' && shoot = '1') then
	 shootb1 <= '1';     
         shootb2 <= '0';
        	shootb3 <= '0';
elsif (bullet_inscreen_3 = '1' && bullet_inscreen_2 = '0' && bullet_inscreen_1 = '1' && shoot = '1') then
	 shootb1 <= '0';     
         shootb2 <= '1';
        	shootb3 <= '0';
elsif (bullet_inscreen_3 = '1' && bullet_inscreen_2 = '1' && bullet_inscreen_1 = '0' && shoot = '1') then
	 shootb1 <= '1';     
         shootb2 <= '0';
        	shootb3 <= '0';
elsif (bullet_inscreen_3 = '1' && bullet_inscreen_2 = '1' && bullet_inscreen_1 = '1' && shoot = '1' then
	 shootb1 <= '0';     
         shootb2 <= '0';
        	shootb3 <= '0';
else 
	 shootb1 <= '0';     
         shootb2 <= '0';
        	shootb3 <= '0';
end if;



end process;

end behaviour;

