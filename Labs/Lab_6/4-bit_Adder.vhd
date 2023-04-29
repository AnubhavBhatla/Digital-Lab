 library ieee;
use ieee.std_logic_1164.all;

package A_4 is
  component Adder_4bit is
    port (a3,a2,a1,a0,b3,b2,b1,b0: in std_logic; S3,S2,S1,S0,C: out std_logic);
  end component Adder_4bit;
end package A_4;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

library work;
use work.FA.all;

entity Adder_4bit is
  port (a3,a2,a1,a0,b3,b2,b1,b0: in std_logic; S3,S2,S1,S0,C: out std_logic);
end entity Adder_4bit;

architecture Struct of Adder_4bit is
	signal t0,t1,t2: std_logic;
begin

  HA: HALF_ADDER port map (A => a0, B => b0, C => t0, S => S0);
  FA_1: Full_Adder port map (A => a1, B => b1, Cin => t0, S => S1, Cout => t1);
  FA_2: Full_Adder port map (A => a2, B => b2, Cin => t1, S => S2, Cout => t2);
  FA_3: Full_Adder port map (A => a3, B => b3, Cin => t2, S => S3, Cout => C);
  
end Struct;