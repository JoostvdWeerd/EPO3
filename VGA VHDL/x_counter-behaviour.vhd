library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of x_counter is
signal count, new_count : unsigned(8 downto 0);
begin
	--registers die checken of je reset.
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				count <= (others => '1');
			else
				count <= new_count;
			end if;
		end if;
	end process;
	-- dit berekent de niewe count want dat is ook wel handig in een counter
	process(count)
	begin
		if (count = 399) then
			new_count <= (others => '0');
		else 
			new_count <= count + 1;
		end if;
	end process;
	x <= std_logic_vector(count);
end behaviour;

