library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is
    function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
				variable sum : std_logic_vector(4 downto 0) := (others => '0');
				variable carry : std_ulogic := '0';
				variable i : integer;
        begin
				for i in 0 to 3 loop
					sum(i) := ((A(i) XOR B(i)) XOR carry);
					carry := ((A(i) AND B(i)) OR (carry AND (A(i) OR B(i))));
				end loop;
				sum(4) := carry;
            return "000"&sum;
    end add;
 
begin
alu : process( A, B, sel )
begin
	if ((sel(1) = '0') AND (sel(0) = '0')) then
		op <= A&B;
	elsif ((sel(1) = '0') AND (sel(0) = '1')) then
		op <= add(A,B);
	elsif ((sel(1) = '1') AND (sel(0) = '0')) then
		op <= "0000"&(A XOR B);
	else
		op <= add(A,A);
	end if;
end process ;
end a1 ;
