library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

library work;
use work.FA.all;

entity Adder_8bit is
  port (a,b: in std_logic_vector(7 downto 0); Y: out std_logic_vector(7 downto 0); Cout: out std_logic);
end entity Adder_8bit;

architecture Struct of Adder_8bit is
	signal t0,t1,t2,t3,t4,t5,t6: std_logic;
begin

  HA: HALF_ADDER port map (A => a(0), B => b(0), C => t0, S => Y(0));
  FA_1: Full_Adder port map (A => a(1), B => b(1), Cin => t0, S => Y(1), Cout => t1);
  FA_2: Full_Adder port map (A => a(2), B => b(2), Cin => t1, S => Y(2), Cout => t2);
  FA_3: Full_Adder port map (A => a(3), B => b(3), Cin => t2, S => Y(3), Cout => t3);
  FA_4: Full_Adder port map (A => a(4), B => b(4), Cin => t3, S => Y(4), Cout => t4);
  FA_5: Full_Adder port map (A => a(5), B => b(5), Cin => t4, S => Y(5), Cout => t5);
  FA_6: Full_Adder port map (A => a(6), B => b(6), Cin => t5, S => Y(6), Cout => t6);
  FA_7: Full_Adder port map (A => a(7), B => b(7), Cin => t6, S => Y(7), Cout => Cout);
  
end Struct;