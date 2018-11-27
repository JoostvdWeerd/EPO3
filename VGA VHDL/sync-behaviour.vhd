library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of sync is
signal vold, vnew, hold, hnew : std_logic;
begin
	--buffers om glitches te voorkomen, zorgt dus wel voor clockcycle delay rekening mee houden met RGB shizzle!!!!!!!!!!!
	process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				vold <= '0';
				hold <= '0';
			else
				vold <= vnew;
				hold <= hnew;
			end if;
		end if;
	end process;
	-- nieuwe waarde voor de hsync afhankelijk van x counter, <400 want anders glitch bij begin (max waarde na reset)
	process(x)
	begin
		if (unsigned(x) > 47 AND unsigned(x) < 400) then
			hnew <= '1';
		else
			hnew <= '0';
		end if;
	end process;
	-- en dan nu de vsync afhankelijk van y counter
	process(y)
	begin
		if (unsigned(y) > 1) then
			vnew <= '1';
		else
			vnew <= '0';
		end if;
	end process;	

	v_sync <= vold;
	h_sync <= hold;
	enable_calc <= NOT vold; --want is gewoon zo en handig voor de rest

end behaviour;

