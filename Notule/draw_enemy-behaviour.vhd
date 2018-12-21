library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of draw_enemy is

signal R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13 : std_logic_vector(31 downto 0);
signal G1,G2,G3,G4,G5,G6,G7,G8, G11,G12,G13 : std_logic_vector(31 downto 0);
signal B12,B13 : std_logic_vector(31 downto 0);

begin

-- red sprite definition
R1 <= "00000000000000011111110000000000";
R2 <= "00000000000000011000111100000000";
R3 <= "00000000000001111100001111000000";
R4 <= "00000000000110111111100111100000";
R5 <= "00000000011100110011110001110000";
R6 <= "00000000000001111100011100011000";
R7 <= "00000000011111001111000111001100";
R8 <= "00000000000111100011110001100110";
R9 <= "00000000000001110000111100111010";
R10 <="00000011000001111111001110001111";
R11 <="00000111110001100000000111111111";
R12 <="00001111110000111000111000111111";
R13 <="00011111111100011111000111111110";

-- green sprite definition
G1 <= "00000000000000100000000000000000";
G2 <= "00000000000111100000000000000000";
G3 <= "00000000111110000000000000000000";
G4 <= "00000011111000000000000000000000";
G5 <= "00001111100000000000000000000000";
G6 <= "00111110000000000000000000000000";
G7 <= "01111000000000000000000000000000";
G8 <= "01111111111000000000000000000000";

G11<= "00000000000000011111111000000000";
G12<= "00000011110000000111000000000000";
G13<= "00000111111111100000000000000000";

-- blue sprite definition
B12<= "00000000000000000000000000000111";
B13<= "00000000000000000000000011111110";

process (x, y, x_en, y_en, draw_count)
begin
	if ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 32) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 57)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R1(to_integer(unsigned(draw_count)));
			G <= G1(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 33) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 56)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R2(to_integer(unsigned(draw_count)));
			G <= G2(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 34) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 55)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R3(to_integer(unsigned(draw_count)));
			G <= G3(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 35) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 54)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R4(to_integer(unsigned(draw_count)));
			G <= G4(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 36) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 53)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R5(to_integer(unsigned(draw_count)));
			G <= G5(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 37) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 52)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R6(to_integer(unsigned(draw_count)));
			G <= G6(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 38) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 51)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R7(to_integer(unsigned(draw_count)));
			G <= G7(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 39) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 50)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R8(to_integer(unsigned(draw_count)));
			G <= G8(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 40) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 49)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R9(to_integer(unsigned(draw_count)));
			G <= '0';
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 41) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 48)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R10(to_integer(unsigned(draw_count)));
			G <= '0';
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 42) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 47)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R11(to_integer(unsigned(draw_count)));
			G <= G11(to_integer(unsigned(draw_count)));
			B <= '0';
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 43) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 46)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R12(to_integer(unsigned(draw_count)));
			G <= G12(to_integer(unsigned(draw_count)));
			B <= B12(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif ((to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 44) or (to_integer(unsigned(y)) = to_integer(unsigned(y_en)) + 45)) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_en)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_en)) + 100) then
			enable <= '1';
			R <= R13(to_integer(unsigned(draw_count)));
			G <= G13(to_integer(unsigned(draw_count)));
			B <= B13(to_integer(unsigned(draw_count)));
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

