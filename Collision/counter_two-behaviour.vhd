library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour_counter_two of counter_two is
signal count_inside, new_count : unsigned(3 downto 0);

begin
statereg: process(clk, start_value, reset, reset_2)
begin
if(falling_edge(clk))then
	if (reset = '1') then
		count_inside <= (others => '0');
	elsif (reset_2 = '1') then
		count_inside <= unsigned(start_value);
	else
		count_inside <= new_count;
	end if;
end if;
end process;

combinatorial: process (count_inside)
begin
	new_count <= count_inside + 1;
end process;

count <= std_logic_vector(count_inside);

end behaviour_counter_two;


