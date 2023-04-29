library ieee;
use ieee.std_logic_1164.all;

package FA is
  component Full_Adder is
    port (A, B, Cin: in std_logic; S, Cout: out std_logic);
  end component Full_Adder;
end package FA;
  
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity Full_Adder is
  port (A, B, Cin: in std_logic; S, Cout: out std_logic);
end entity Full_Adder;

architecture Struct of Full_Adder is
  signal tC, tS, U, V: std_logic;
begin
  -- component instances
  ha: Half_Adder 
       port map (A => A, B => B, S => tS, C => tC);

  -- propagate carry.
  a1: AND_2 port map (A => tS, B => Cin, Y => V);
  o1: OR_2  port map (A => V, B => tC, Y => Cout);

  -- final sum.
  x1: XOR_2 port map (A => tS, B => Cin, Y => S);
end Struct;
