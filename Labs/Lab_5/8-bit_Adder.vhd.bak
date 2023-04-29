library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

library work;
use work.M_2x1.all;

library work;
use work.M_4x1.all;

entity MUX_4x1_4bit is
  port (a, b, c, d: in std_logic_vector(3 downto 0); sel: in std_logic_vector(1 downto 0); Y: out std_logic_vector(3 downto 0));
end entity MUX_4x1_4bit;

architecture Struct of MUX_4x1_4bit is

begin

  M_4bit_1: MUX_4x1 port map (I0 => a(0), I1 => b(0), I2 => c(0), I3 => d(0), S0 => sel(0), S1 => sel(1), Y => Y(0));
  M_4bit_2: MUX_4x1 port map (I0 => a(1), I1 => b(1), I2 => c(1), I3 => d(1), S0 => sel(0), S1 => sel(1), Y => Y(1));
  M_4bit_3: MUX_4x1 port map (I0 => a(2), I1 => b(2), I2 => c(2), I3 => d(2), S0 => sel(0), S1 => sel(1), Y => Y(2));
  M_4bit_4: MUX_4x1 port map (I0 => a(3), I1 => b(3), I2 => c(3), I3 => d(3), S0 => sel(0), S1 => sel(1), Y => Y(3));
  
end Struct;