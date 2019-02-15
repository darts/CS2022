
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8_16bit_testbench is
end mux8_16bit_testbench;

architecture Behavioral of mux8_16bit_testbench is
    component mux8_16bit
    port(
        sel : in  STD_LOGIC_VECTOR (3 downto 0);
        in1 : in  STD_LOGIC_VECTOR (15 downto 0);
        in2 : in  STD_LOGIC_VECTOR (15 downto 0);
        in3 : in  STD_LOGIC_VECTOR (15 downto 0);
        in4 : in  STD_LOGIC_VECTOR (15 downto 0);
        in5 : in  STD_LOGIC_VECTOR (15 downto 0);
        in6 : in  STD_LOGIC_VECTOR (15 downto 0);
        in7 : in  STD_LOGIC_VECTOR (15 downto 0);
        in8 : in  STD_LOGIC_VECTOR (15 downto 0);
        z : out  STD_LOGIC_VECTOR (15 downto 0)
        );
    end component;
    
    --inputs
    signal sel : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal in0
begin


end Behavioral;
