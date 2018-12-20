library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of colour is
signal new_colour, old_colour : std_logic;
begin
	-- buffer to make the RGB values have a smaller delay compared 
	-- to the clock and be more stable => better for the VGA output.
	-- also can be easily corrected for in the timing of the draw FSM
	process(clk)
	begin
		if (clk'event AND clk = '1') then
			if (reset = '1') then
				old_colour <= '0';
			else
				old_colour <= new_colour;
			end if;
		end if;
	end process;
	-- the colour is big OR of all the inputs
	new_colour <= (pl OR bl1 OR bl2 OR bl3 OR en1 OR en2 OR en3 OR en4 OR en5 OR en6);
	-- and then we map it to the output
	colour <= old_colour;
end behaviour;
