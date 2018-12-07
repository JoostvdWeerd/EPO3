library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture behaviour of drawing is
-- all different states are declared here, should find 
-- another way to do this in the final version because 
-- this is not doable for bigger sprites.
  type ctrl_state is (reset_state, p11, p12, p13, p14, p15, p16, p17, 
		      p18, p21, p22, p23, p24, p25, p26, p27, p28, p31, 
		      p32, p33, p34, p35, p36, p37, p38); 
  signal state, new_state : ctrl_state;
  
begin
-- fsm so we need registers.
  process (clk)
	begin
		if (clk'event AND clk ='1') then
			if (reset = '1') then
				state	<= reset_state;
			else
				state	<= new_state;
			end if;
		end if;
	end process;
-- and now we declare our states and next states.
	process (state, x, y, x_object, y_object)
	begin
	  case state is
	    --our reset_state has output r = g = b = 0 because we are not drawing the sprite here
	    when reset_state =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			-- now we need to check what our next state should be.
			-- for x compare first -1, then -syncvalue and -frontporch
			if (((to_integer(unsigned(x)))= (to_integer(unsigned(x_object))) + 69)) then
			-- for the y compare we check in which row we are
				if ((to_integer(unsigned(y))) = (to_integer(unsigned(y_object)) + 32 )) then
					new_state <= p11;
				elsif ((to_integer(unsigned(y))) = (to_integer(unsigned(y_object)) + 33 )) then
					new_state <= p21;
				elsif ((to_integer(unsigned(y))) = (to_integer(unsigned(y_object)) + 34 )) then
					new_state <= p31;
				elsif ((to_integer(unsigned(y))) = (to_integer(unsigned(y_object)) + 35 )) then
					new_state <= p21;
				elsif ((to_integer(unsigned(y))) = (to_integer(unsigned(y_object)) + 36 )) then
					new_state <= p11;
				else
					new_state <= reset_state;
				end if;
			else 
				new_state <= reset_state;
			end if;
		-- and here we give each state its rgb values.
	    	when p11 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '1';
			new_state <= p12;
	    	when p12 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p13;
	    	when p13 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p14;
	    	when p14 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p15;
	    	when p15 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '1';
			new_state <= p16;
	    	when p16 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '1';
			new_state <= p17;
	    	when p17 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '1';
			new_state <= p18;
	    	when p18 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '1';
			new_state <= reset_state;
	    	when p21 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p12;
	    	when p22 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p13;
	    	when p23 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p14;
	    	when p24 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p15;
	    	when p25 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p16;
	    	when p26 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p17;
	    	when p27 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= p18;
	    	when p28 =>
			R_object <= '1';
			G_object <= '1';
			B_object <= '1';
			new_state <= reset_state;
	    	when p31 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p12;
	    	when p32 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p13;
	    	when p33 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p14;
	    	when p34 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p15;
	    	when p35 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p16;
	    	when p36 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p17;
	    	when p37 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= p18;
	    	when p38 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= reset_state;
	  end case;
	end process;
  
end architecture behaviour;
