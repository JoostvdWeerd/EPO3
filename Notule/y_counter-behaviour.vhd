library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of y_counter is
signal count, new_count : unsigned(9 downto 0);
begin
	process(clk)
	begin
		if (clk'event AND clk ='1') then
			if (reset = '1') then
				count <= (others => '0');
			else
				count <= new_count;
			end if;
		end if;
	end process;
	-- simple counter implementation based on x counter
	process(count, x)
	begin
	-- at max value of x we should add 1
		if (unsigned(x) = 399) then
			-- and then we reset at y = 524
			if (count = 524) then
				new_count <= (others => '0');
			else
				new_count <= count + 1; 
			end if;
		else 
			new_count <= count;
		end if;
	end process;
	-- and we map to the output signal
	y <= std_logic_vector(count);
end behaviour;

