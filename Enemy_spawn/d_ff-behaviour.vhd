library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of d_ff is
begin

process(reset, enable) --asynchronous reset so both in sensitivity
begin
	if(reset = '1') then -- output is being reset while reset is on
		q <= '0';
	elsif(enable'event and enable = '1') then -- input changes when enable goes to high
		q <= d; --input becomes output
	end if;
end process;
end behaviour;

