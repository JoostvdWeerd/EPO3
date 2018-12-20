library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of draw_counter is

signal count, new_count : unsigned(4 downto 0);

begin

-- register
process(clk)
begin
	-- asynchronous reset
	if (reset = '1') then
		count <= (others => '0');
	else
		if (clk'event and clk = '1') then
			count <= new_count;
		end if;
	end if;
end process;

-- combinatorial
process(count, enable)
begin
	if (enable = '0') then
		new_count <= (others => '0');
	else
		new_count <= count + 1;
	end if;
end process;

draw_count <= std_logic_vector(count);

end behaviour;

