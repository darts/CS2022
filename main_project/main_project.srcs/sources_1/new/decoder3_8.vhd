library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder3_8 is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           out1 : out STD_LOGIC;
           out2 : out STD_LOGIC;
           out3 : out STD_LOGIC;
           out4 : out STD_LOGIC;
           out5 : out STD_LOGIC;
           out6 : out STD_LOGIC;
           out7 : out STD_LOGIC;
           out8 : out STD_LOGIC
     );
end decoder3_8;

architecture Behavioral of decoder3_8 is
constant gate_delay: Time := 5ns;

begin
   process ( sel)
		begin
		case sel is
			when "000" => out1 <= '1' after gate_delay;
			when "001" => out2 <= '1' after gate_delay;
			when "010" => out3 <= '1' after gate_delay;
			when "011" => out4 <= '1' after gate_delay;
			when "100" => out5 <= '1' after gate_delay;
			when "101" => out6 <= '1' after gate_delay;
			when "110" => out7 <= '1' after gate_delay;
			when "111" => out8 <= '1' after gate_delay;
		end case;
	end process;
	
end Behavioral;