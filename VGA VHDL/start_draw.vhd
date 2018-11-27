library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity object is
  port (clk                  : in  std_logic;
        reset_in                : in  std_logic;
		x				 	 : in std_logic_vector(8 downto 0);
        y 				     : in std_logic_vector(9 downto 0);
        x_object             : in std_logic_vector(8 downto 0);
        y_object             : in std_logic_vector(9 downto 0);		
		R_object			 : out std_logic;
		G_object			 : out std_logic;
		B_object			 : out std_logic);
end entity object;

architecture behavioural of object is

  type ctrl_state is (reset, pixel_1_1, pixel_2_1, pixel_3_1, pixel_4_1, pixel_1_2, pixel_2_2, pixel_3_2, pixel_4_2, pixel_1_3, pixel_2_3, pixel_3_3, pixel_4_3); 
  signal state, new_state : ctrl_state;
  
begin
  
  process (clk)
	begin
		if (rising_edge (clk)) then
			if (reset_in = '1') then
				state	<= reset;
			else
				state	<= new_state;
			end if;
		end if;
	end process;
	
	process (state, x, y, x_object, y_object)
	begin
	  case state is
	  	    --comment: pixel_x_y
	    when reset =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';

			if (((to_integer(unsigned(x)))= (to_integer(unsigned(x_object)))-1) AND ((to_integer(unsigned(y)))= (to_integer(unsigned(y_object))))) then
				new_state <= pixel_1_1;
			elsif (((to_integer(unsigned(x)))= (to_integer(unsigned(x_object)))-1) AND (((to_integer(unsigned(y))) + 1)= (to_integer(unsigned(y_object))))) then
				new_state <= pixel_1_2;
			elsif (((to_integer(unsigned(x)))= (to_integer(unsigned(x_object)))-1) AND (((to_integer(unsigned(y))) + 2)= (to_integer(unsigned(y_object))))) then
				new_state <= pixel_1_3;
			else 
				new_state <= reset;
			end if;
	    when pixel_1_1 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '1';
			new_state <= pixel_2_1;
		when pixel_2_1 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= pixel_3_1;
		when pixel_3_1 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '1';
			new_state <= pixel_4_1;
		when pixel_4_1 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= reset;

	    when pixel_1_2 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= pixel_2_2;
		when pixel_2_2 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '1';
			new_state <= pixel_3_2;
		when pixel_3_2 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= pixel_4_2;
		when pixel_4_2 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= reset;
			
	    when pixel_1_3 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= pixel_2_3;
		when pixel_2_3 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= pixel_3_3;
		when pixel_3_3 =>
			R_object <= '1';
			G_object <= '0';
			B_object <= '0';
			new_state <= pixel_4_3;
		when pixel_4_3 =>
			R_object <= '0';
			G_object <= '0';
			B_object <= '0';
			new_state <= reset;			
	  end case;
	end process;
  
end architecture behavioural;
