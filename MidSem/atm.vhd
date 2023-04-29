--///////////////////////////////////////////////////////////////////////////

-- @ Soumyajit Langal (WEL IITB)
-- The skeleton code for Mid-Semester EE214. 

--///////////////////////////////////////////////////////////////////////////

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.Gates.all;

entity atm is
	port (input: in std_logic_vector(7 downto 0); a: out std_logic_vector(1 downto 0); b0: out std_logic; c: out std_logic_vector(5 downto 0); p: out std_logic_vector(1 downto 0));
end entity atm;

architecture struct of atm is

component div is
generic(
			N : integer:=8; -- operand width
			NN : integer:=16 -- result width
        );
port (
			Nu: in std_logic_vector(N-1 downto 0);-- Nu (read numerator) is dividend
			D: in std_logic_vector(N-1 downto 0);-- D (read Denominator) is divisor
			RQ: out std_logic_vector(NN-1 downto 0)--upper N bits of RQ will have remainder and lower N bits will have quotient
) ;
end component;

	signal r7,r6,r5,r4,r3,r2,r1,r0,t,t_a1,t_a0,t_b0,t_p0,b_inv,del0,del1,del2,del3,del4,del5,del6,del7,del8,del10,del11,del12,del13,del14,del15,x7,x8,x9,x10,x11,x12,x13: std_logic;

begin
	
-- Write code here(don't worry about generic, just ignore it and do normal port mapping for div)
	div1: div port map (Nu => input, D(7) => '0', D(6) => '1', D(5) => '1', D(4) => '0', D(3) => '0', D(2) => '1', D(1) => '0', D(0) => '0', RQ(15) => r7, RQ(14) => r6, RQ(13) => r5, RQ(12) => r4, RQ(11) => r3, RQ(10) => r2, RQ(9) => r1, RQ(8) => r0, RQ(7) => del15, RQ(6) => del14, RQ(5) => del13, RQ(4) => del12, RQ(3) => del11, RQ(2) => del10, RQ(1) => t_a1, RQ(0) => t_a0);
	div2: div port map (Nu(7) => r7, Nu(6) => r6, Nu(5) => r5, Nu(4) => r4, Nu(3) => r3, Nu(2) => r2, Nu(1) => r1, Nu(0) => r0, D(7) => '0', D(6) => '0', D(5) => '1', D(4) => '1', D(3) => '0', D(2) => '0', D(1) => '1', D(0) => '0', RQ(15) => del0, RQ(14) => del1, RQ(13) => c(5), RQ(12) => c(4), RQ(11) => c(3), RQ(10) => c(2), RQ(9) => c(1), RQ(8) => c(0), RQ(7) => del2, RQ(6) => del3, RQ(5) => del4, RQ(4) => del5, RQ(3) => del6, RQ(2) => del7, RQ(1) => del8, RQ(0) => t_b0);
	
	or1: OR_2 port map (A => t_a1, B => t_a0, Y => t);
	inv1: INVERTER port map (A => t_b0, Y => b_inv);
	
	or2: OR_2 port map (A => b_inv, B => t, Y => t_p0);
	or7: OR_2 port map (A => input(7), B => input(6), Y => x7);
	or8: OR_2 port map (A => input(5), B => x7, Y => x8);
	or9: OR_2 port map (A => input(4), B => x8, Y => x9);
	or10: OR_2 port map (A => input(3), B => x9, Y => x10);
	or11: OR_2 port map (A => input(2), B => x10, Y => x11);
	or12: OR_2 port map (A => input(1), B => x11, Y => x12);
	or13: OR_2 port map (A => input(0), B => x12, Y => x13);
	and1: AND_2 port map (A => t_p0, B => x13, Y => p(0));
	or3: OR_2 port map (A => t_b0, B => t, Y => p(1));
	
	or4: OR_2 port map (A => t_a1, B => t_a1, Y => a(1));
	or5: OR_2 port map (A => t_a0, B => t_a0, Y => a(0));
	or6: OR_2 port map (A => t_b0, B => t_b0, Y => b0);
	

end struct;
