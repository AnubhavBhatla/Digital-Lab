library ieee;
use ieee.std_logic_1164.all;

entity MUX_4x1_4bit_beh is
    port (
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
		  C: in std_logic_vector(3 downto 0);
		  D: in std_logic_vector(3 downto 0);
        sel: in std_logic_vector(1 downto 0);
        op: out std_logic_vector(3 downto 0)
    ) ;
end MUX_4x1_4bit_beh;

architecture beh of MUX_4x1_4bit_beh is

begin
MUX_4x1_4bit_beh : process( A, B, C, D, sel )
begin

	if ((sel(1) = '0') AND (sel(0) = '0')) then
		op <= A;
	elsif ((sel(1) = '0') AND (sel(0) = '1')) then
		op <= B;
	elsif ((sel(1) = '1') AND (sel(0) = '0')) then
		op <= C;
	else
		op <= D;
	end if;
end process;
end beh;
