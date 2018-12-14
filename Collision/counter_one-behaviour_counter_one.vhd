library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour_counter_one of counter_one is
signal count_inside, new_count : unsigned(3 downto 0);
begin
statereg: process(clk)
begin
if(clk'event and clk='1')then
if (reset = '1') then
	count_inside <= (others => '0');
else
	count_inside <= new_count;
end if;
end if;
end process;

combinatorial: process (count, enable)
begin
	if (enable = '1') then
	new_count <= count_inside + 1;
	else
	new_count <= count_inside;
	end if;
end process;

count <= std_logic_vector (count_inside);

end behaviour_counter_one;

