 library ieee;
use ieee.std_logic_1164.all;

package M_2x1 is
  component MUX_2x1 is
    port (I0, I1, S: in std_logic; Y: out std_logic);
  end component MUX_2x1;
end package M_2x1;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity MUX_2x1 is
  port (I0, I1, S: in std_logic; Y: out std_logic);
end entity MUX_2x1;

architecture Struct of MUX_2x1 is
  signal SNOT, tA, tB: std_logic;
begin

  inv1: INVERTER port map (A => S, Y => SNOT);

  a1: AND_2 port map (A => I0, B => SNOT, Y => tA);
  a2: AND_2 port map (A => S, B => I1, Y => tB);
  
  o1: OR_2  port map (A => tA, B => tB, Y => Y);

end Struct;