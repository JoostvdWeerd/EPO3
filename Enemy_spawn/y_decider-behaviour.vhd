library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of y_decider is
begin

-- j=Just giving random bits from the lsfr to this
y_coordinaat(8) <= iny_1;
y_coordinaat(7) <= iny_2;
y_coordinaat(6) <= not iny_1; --making sure it will never exceed the maximum value
y_coordinaat(5) <= iny_3; 
y_coordinaat(4) <= iny_4;
y_coordinaat(3) <= iny_5;
y_coordinaat(2) <= iny_6;
y_coordinaat(1) <= iny_7;
y_coordinaat(0) <= iny_8;	

end behaviour;

