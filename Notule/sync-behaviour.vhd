library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;

architecture behaviour of sync is
signal vold, vnew, hold, hnew : std_logic;
begin
	--
	process(clk)
	begin
		if (clk'event AND clk ='1')then	
			if (reset = '1') then
				vold <= '0';
				hold <= '0';
			else
				vold <= vnew;
				hold <= hnew;
			end if;
		end if;
	end process;
	-- new value for hsync depends on x counter
	-- <400 so we do not get a glitch at the start, 
	-- since x counter starts at max value after a reset
	process(x)
	begin
		if (unsigned(x) > 47 AND unsigned(x) < 400) then
			hnew <= '1';
		else
			hnew <= '0';
		end if;
	end process;
	-- vsync depending on the y counter
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
	enable_calc <= NOT vold; 
	-- this signal is send to the other modules 
	-- to tell them the frame has been drawn

end behaviour;

