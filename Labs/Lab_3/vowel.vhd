 library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity vowel_det is
  port (x: in std_logic_vector(3 downto 0); Y: out std_logic);
end entity vowel_det;

architecture Struct of vowel_det is
  signal tA, tX: std_logic;
begin

  a1: AND_2 port map (A => x(2), B => x(3), Y => tA);

  x1: XOR_2 port map (A => x(1), B => tA, Y => tX);
  
  nor1: NOR_2  port map (A => tX, B => x(0), Y => Y);
  
end Struct;
