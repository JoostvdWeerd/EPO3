library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of spawn_timer is


begin

process(clk) -- checking as often as possible so using the clock
begin
if(clk'event and clk = '1') then
-- simple and gate to decide when it needs to be high
decider <= in_1 and in_2 and in_3 and in_4 and in_5 and in_6 and in_7 and enable and (not prev_state);
end if;
end process;

end behaviour;

