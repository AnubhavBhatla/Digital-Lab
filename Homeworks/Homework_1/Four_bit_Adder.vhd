library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

library work;
use work.FA.all;

entity Four_bit_Adder is
  port (A, B: in std_logic_vector(3 downto 0); M: in std_logic; S: out std_logic_vector(3 downto 0); Cout: out std_logic);
end entity Four_bit_Adder;

architecture Struct of Four_bit_Adder is
  signal x0, x1, x2, x3, y0, y1, y2: std_logic;
begin
  -- component instances
  
  --Full Adders
  
  fa1: Full_Adder 
       port map (A => A(0), B => x0, Cin => M, S => S(0), Cout => y0);
  fa2: Full_Adder 
       port map (A => A(1), B => x1, Cin => y0, S => S(1), Cout => y1);
  fa3: Full_Adder 
       port map (A => A(2), B => x2, Cin => y1, S => S(2), Cout => y2);
  fa4: Full_Adder 
       port map (A => A(3), B => x3, Cin => y2, S => S(3), Cout => Cout);
		 
  --XOR Gates
  
  xor1: XOR_2
		 port map (A => M, B => B(0), Y => x0);
  xor2: XOR_2
		 port map (A => M, B => B(1), Y => x1);
  xor3: XOR_2
		 port map (A => M, B => B(2), Y => x2);
  xor4: XOR_2
		 port map (A => M, B => B(3), Y => x3);
		 
end Struct;
