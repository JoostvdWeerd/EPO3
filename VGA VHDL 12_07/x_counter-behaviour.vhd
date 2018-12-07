library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of x_counter is
signal count, new_count : unsigned(8 downto 0);
begin
	process(clk)
	begin
		if (clk'event AND clk = '1') then
			if (reset = '1') then
			-- after a reset we go to '111111111',
			-- this way we do not miss the 0 value.
				count <= (others => '1');
			else
				count <= new_count;
			end if;
		end if;
	end process;
	-- simple counter implementation that resets at 399
	process(count)
	begin
		if (count = 399) then
			new_count <= (others => '0');
		else 
			new_count <= count + 1;
		end if;
	end process;
	-- and we map to the output signal
	x <= std_logic_vector(count);
end behaviour;

