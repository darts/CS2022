library ieee;
use ieee.std_logic_1164.all;

entity mux_2_16bit_TestBench is
end mux_2_16bit_TestBench;
 
 
Architecture behavior of mux_2_16bit_TestBench is 
    component mux_2_16bit
    port(
         S : in  std_logic;
         In0 : in  std_logic_vector(15 downto 0);
         In1 : in  std_logic_vector(15 downto 0);
         Z : out  std_logic_vector(15 downto 0)
        );
    end component;
    
   --Inputs
   signal S : std_logic := '0';
   signal In0 : std_logic_vector(15 downto 0) := (others => '0');
   signal In1 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2_16bit PORT MAP (
          S => S,
          In0 => In0,
          In1 => In1,
          Z => Z
        );

	-- Stimulus process
   stim_proc0: process
   begin
      In0 <= x"AAAA";
		In1 <= x"FFFF";
		wait for 300 ns;
   end process;

   -- Stimulus process
   stim_proc1: process
   begin		
      wait for 100 ns;	
		S <= not S;
   end process;
END;
