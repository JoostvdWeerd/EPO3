library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of bullet is

signal sprite_R1, sprite_R2, sprite_R3 : std_logic_vector(5 downto 0);
signal sprite_G1, sprite_G2, sprite_G3 : std_logic_vector(5 downto 0);
signal sprite_B1, sprite_B2, sprite_B3 : std_logic_vector(5 downto 0);

begin

-- red sprite definition
sprite_R1 <= "011110";
sprite_R2 <= "111111";
sprite_R3 <= "011110";

-- green sprite definition
sprite_G1 <= "011100";
sprite_G2 <= "111110";
sprite_G3 <= "011100";

-- blue sprite definition
sprite_B1 <= "011100";
sprite_B2 <= "111100";
sprite_B3 <= "011100";

process (x, y, x_bul, y_bul, draw_count)
begin
	-- check if bullet's y matches current position
	if (to_integer(unsigned(y)) = to_integer(unsigned(y_bul)) + 32) then
		-- check if current position is in bullet's x's range
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_bul)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_bul)) + 74) then
			enable <= '1';
			R <= sprite_R1(to_integer(unsigned(draw_count)));
			G <= sprite_G1(to_integer(unsigned(draw_count)));
			B <= sprite_B1(to_integer(unsigned(draw_count)));
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
			R <= sprite_R2(to_integer(unsigned(draw_count)));
			G <= sprite_G2(to_integer(unsigned(draw_count)));
			B <= sprite_B2(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;

	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_bul)) + 34) then
		-- check if current position is in bullet's x's range
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_bul)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_bul)) + 74) then
			enable <= '1';
			R <= sprite_R3(to_integer(unsigned(draw_count)));
			G <= sprite_G3(to_integer(unsigned(draw_count)));
			B <= sprite_B3(to_integer(unsigned(draw_count)));
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

