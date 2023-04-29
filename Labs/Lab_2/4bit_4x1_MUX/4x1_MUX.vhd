 library ieee;
use ieee.std_logic_1164.all;

package M_4x1 is
  component MUX_4x1 is
    port (I0, I1, I2, I3, S0, S1: in std_logic; Y: out std_logic);
  end component MUX_4x1;
end package M_4x1;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

library work;
use work.M_2x1.all;

entity MUX_4x1 is
  port (I0, I1, I2, I3, S0, S1: in std_logic; Y: out std_logic);
end entity MUX_4x1;

architecture Struct of MUX_4x1 is
  signal tA, tB: std_logic;
begin

  M1: MUX_2x1 port map (I0 => I0, I1 => I1, S => S0, Y => tA);
  M2: MUX_2x1 port map (I0 => I2, I1 => I3, S => S0, Y => tB);
  M3: MUX_2x1 port map (I0 => tA, I1 => tB, S => S1, Y => Y);

end Struct;