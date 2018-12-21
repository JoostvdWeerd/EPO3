library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of draw_bullet is

signal sprite_R1 : std_logic_vector(5 downto 0);
signal sprite_GB1, sprite_G2 : std_logic_vector(5 downto 0);
signal sprite_B2 : std_logic_vector(5 downto 0);

begin

-- red sprite definition
sprite_R1 <= "011110";

-- green sprite definition
sprite_GB1 <= "011100";
sprite_G2 <= "111110";

-- blue sprite definition
sprite_B2 <= "111100";

process (x, y, x_bul, y_bul, draw_count)
begin
	-- check if bullet's y matches current position
	if ((to_integer(unsigned(y)) = to_integer(unsigned(y_bul)) + 32) OR (to_integer(unsigned(y)) = to_integer(unsigned(y_bul)) + 34)) then
		-- check if current position is in bullet's x's range
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_bul)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_bul)) + 74) then
			enable <= '1';
			R <= sprite_R1(to_integer(unsigned(draw_count)));
			G <= sprite_GB1(to_integer(unsigned(draw_count)));
			B <= sprite_GB1(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;

	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_bul)) + 33) then
		-- check if current position is in bullet's x's range
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_bul)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_bul)) + 74) then
			enable <= '1';
			R <= '1';
			G <= sprite_G2(to_integer(unsigned(draw_count)));
			B <= sprite_B2(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;

	else
		enable <= '0';
		R <= '0';
		G <= '0';
		B <= '0';
	end if;
end process;	

end behaviour;

