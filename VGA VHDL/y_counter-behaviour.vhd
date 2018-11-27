library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of y_counter is
signal count, new_count : unsigned(9 downto 0);
begin
	--registers die checken of je reset.
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				count <= (others => '0');
			else
				count <= new_count;
			end if;
		end if;
	end process;
	-- we gaan weer tellen
	process(count, x)
	begin
	-- alleen maar tellen als x = max waarde
		if (unsigned(x) = 399) then
			-- maar als y = max waarde moeten we naar nul
			if (count = 524) then
				new_count <= (others => '0');
			else
				new_count <= count + 1; 
			end if;
		else 
			-- gewoon voor de zekerheid even een else
			new_count <= count;
		end if;
	end process;
	-- en dan porten naar de output
	y <= std_logic_vector(count);
end behaviour;

