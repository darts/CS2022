library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg16 is
    Port ( D : in  STD_LOGIC_VECTOR (15 downto 0);
           load : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (15 downto 0));
end reg16;

architecture Behavioral of reg16 is
constant gate_delay: Time := 5ns; 

begin
process(CLK)
begin
if (rising_edge(CLK)) then
	if load='1' then
		Q <= D after gate_delay;
	end if;
end if;
end process;
end Behavioral;