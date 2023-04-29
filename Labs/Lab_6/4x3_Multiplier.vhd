library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

library work;
use work.FA.all;

library work;
use work.A_4.all;

entity Multiplier_4bit is
  port (a: in std_logic_vector(3 downto 0); b: in std_logic_vector(2 downto 0); m: out std_logic_vector(6 downto 0));
end entity Multiplier_4bit;

architecture Struct of Multiplier_4bit is
	signal t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16: std_logic;
begin
  
  a_1: AND_2 port map (A => a(0), B => b(0), Y => m(0));
  a_2: AND_2 port map (A => a(1), B => b(0), Y => t2);
  a_3: AND_2 port map (A => a(2), B => b(0), Y => t3);
  a_4: AND_2 port map (A => a(3), B => b(0), Y => t4);
  a_5: AND_2 port map (A => a(0), B => b(1), Y => t5);
  a_6: AND_2 port map (A => a(1), B => b(1), Y => t6);
  a_7: AND_2 port map (A => a(2), B => b(1), Y => t7);
  a_8: AND_2 port map (A => a(3), B => b(1), Y => t8);
  a_9: AND_2 port map (A => a(0), B => b(2), Y => t9);
  a_10: AND_2 port map (A => a(1), B => b(2), Y => t10);
  a_11: AND_2 port map (A => a(2), B => b(2), Y => t11);
  a_12: AND_2 port map (A => a(3), B => b(2), Y => t12);
  
  Adder_1: Adder_4bit port map (a3 => t8, a2 => t7, a1 => t6, a0 => t5, b3 => '0', b2 => t4, b1 => t3, b0 => t2, C => t13, 
  S3 => t14, S2 => t15, S1 => t16, S0 => m(1));
  
  Adder_2: Adder_4bit port map (a3 => t12, a2 => t11, a1 => t10, a0 => t9, b3 => t13, b2 => t14, b1 => t15, b0 => t16, 
  C => m(6), S3 => m(5), S2 => m(4), S1 => m(3), S0 => m(2));
  
  
end Struct;