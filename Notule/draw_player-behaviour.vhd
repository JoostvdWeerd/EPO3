library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of draw_player is

signal R1, R3, R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16,R17,R18,R19,R20,R21,R22, R24 : std_logic_vector(31 downto 0);
signal G10,G11,G12,G13,G14,G15,G16,G17,G18,G19,G20,G21,G22, G24, G26 : std_logic_vector(31 downto 0);
signal B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,B14,B15,B16,B17,B18,B19,B20, B22 : std_logic_vector(31 downto 0);

begin

-- red sprite definition
R1 <= "00000000000000000000000100000000";

R3 <= "00000000000000000000001100000000";

R5 <= "00000000000000000000011100000000";
R6 <= "00000000000000000000111000000000";
R7 <= "00000000000000000001111000000000";
R8 <= "00000000000000000111110000000000";
R9 <= "00000000000000001111110000000000";
R10<= "00000000000000000000000000011000";
R11<= "00000000000000111111000000111100";
R12<= "00000000000011111111100110111110";
R13<= "00000000001111111111100111111111";
R14<= "00000000111110000001100111111111";
R15<= "11111111100000000000100110111110";
R16<= "11111111001111111000100000111100";
R17<= "01111100011111111100000000011000";
R18<= "00000000001111111110000000000000";
R19<= "00000000000001111110000000000000";
R20<= "00000000000000111110000000000000";
R21<= "00000000000000001110000000000000";
R22<= "00000000000000000110000000000000";

R24<= "00000000000000000010000000000000";

-- green sprite definition
G10<= "00000000000000011111110000000000";
G11<= "00000111100000111111100000000000";
G12<= "00001111100011111111100110111000";
G13<= "00011110001111111111100111111100";
G14<= "00011100111110000001100111111100";
G15<= "11111111111111111000100110111000";
G16<= "11111111111111111110100000000000";
G17<= "01111100011111111111000000000000";
G18<= "00000000001111111111000000000000";
G19<= "00000000000001111111000000000000";
G20<= "00000000000000111111000000000000";
G21<= "00000000000000001111000000000000";
G22<= "00000000000000000111000000000000";

G24<= "00000000000000000011000000000000";

G26<= "00000000000000000001000000000000";

-- blue sprite definition
B1 <= "00000000000000000000001110000000";  
B2 <= "00000000000000000000011110000000";

B4 <= "00000000000000000000111110000000";
B5 <= "00000000000000000001111110000000";
B6 <= "00000000000000000011111100000000";
B7 <= "00000000000000001111111100000000";
B8 <= "00000000000000011111111000000000";
B9 <= "00000000000000111111111000000000";
B10<= "00000000000001111111110000000000";
B11<= "00000000011111111111111000000000";
B12<= "00000000011111111111111110000000";
B13<= "00100001111111111111111111000000";
B14<= "11100011111111111111111111000000";
B15<= "11111111111111111111111110000000";
B16<= "11111111111111111111111000000000";
B17<= "01111111111111111111110000000000";
B18<= "00000000111111111111000000000000";
B19<= "00000000011111111111000000000000";
B20<= "00000000000111111111000000000000";

B22<= "00000000000000011111000000000000";

process (x, y, x_pl, y_pl, draw_count)
begin
	if (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 32) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R1(to_integer(unsigned(draw_count)));
			G <= R1(to_integer(unsigned(draw_count)));
			B <= B1(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 33) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R1(to_integer(unsigned(draw_count)));
			G <= R1(to_integer(unsigned(draw_count)));
			B <= B2(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 34) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R3(to_integer(unsigned(draw_count)));
			G <= R3(to_integer(unsigned(draw_count)));
			B <= B2(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 35) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R3(to_integer(unsigned(draw_count)));
			G <= R3(to_integer(unsigned(draw_count)));
			B <= B4(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 36) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R5(to_integer(unsigned(draw_count)));
			G <= R5(to_integer(unsigned(draw_count)));
			B <= B5(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 37) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R6(to_integer(unsigned(draw_count)));
			G <= R6(to_integer(unsigned(draw_count)));
			B <= B6(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 38) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R7(to_integer(unsigned(draw_count)));
			G <= R7(to_integer(unsigned(draw_count)));
			B <= B7(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 39) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R8(to_integer(unsigned(draw_count)));
			G <= R8(to_integer(unsigned(draw_count)));
			B <= B8(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 40) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R9(to_integer(unsigned(draw_count)));
			G <= R9(to_integer(unsigned(draw_count)));
			B <= B9(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 41) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R10(to_integer(unsigned(draw_count)));
			G <= G10(to_integer(unsigned(draw_count)));
			B <= B10(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 42) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R11(to_integer(unsigned(draw_count)));
			G <= G11(to_integer(unsigned(draw_count)));
			B <= B11(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 43) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
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
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 44) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
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
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 45) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R14(to_integer(unsigned(draw_count)));
			G <= G14(to_integer(unsigned(draw_count)));
			B <= B14(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 46) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R15(to_integer(unsigned(draw_count)));
			G <= G15(to_integer(unsigned(draw_count)));
			B <= B15(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 47) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R16(to_integer(unsigned(draw_count)));
			G <= G16(to_integer(unsigned(draw_count)));
			B <= B16(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 48) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R17(to_integer(unsigned(draw_count)));
			G <= G17(to_integer(unsigned(draw_count)));
			B <= B17(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 49) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R18(to_integer(unsigned(draw_count)));
			G <= G18(to_integer(unsigned(draw_count)));
			B <= B18(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 50) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R19(to_integer(unsigned(draw_count)));
			G <= G19(to_integer(unsigned(draw_count)));
			B <= B19(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 51) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R20(to_integer(unsigned(draw_count)));
			G <= G20(to_integer(unsigned(draw_count)));
			B <= B20(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 52) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R21(to_integer(unsigned(draw_count)));
			G <= G21(to_integer(unsigned(draw_count)));
			B <= G20(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 53) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R22(to_integer(unsigned(draw_count)));
			G <= G22(to_integer(unsigned(draw_count)));
			B <= B22(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 54) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R22(to_integer(unsigned(draw_count)));
			G <= G22(to_integer(unsigned(draw_count)));
			B <= G21(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 55) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R24(to_integer(unsigned(draw_count)));
			G <= G24(to_integer(unsigned(draw_count)));
			B <= G22(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 56) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= R24(to_integer(unsigned(draw_count)));
			G <= G24(to_integer(unsigned(draw_count)));
			B <= G22(to_integer(unsigned(draw_count)));
		else
			enable <= '0';
			R <= '0';
			G <= '0';
			B <= '0';
		end if;
	elsif (to_integer(unsigned(y)) = to_integer(unsigned(y_pl)) + 57) then	
		if (to_integer(unsigned(x)) >= to_integer(unsigned(x_pl)) + 69 and 
		to_integer(unsigned(x)) <= to_integer(unsigned(x_pl)) + 100) then
			enable <= '1';
			R <= '0';
			G <= G26(to_integer(unsigned(draw_count)));
			B <= G24(to_integer(unsigned(draw_count)));
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
