library ieee;
use ieee.std_logic_1164.all;

entity Decoder_3x8_beh is
    port (
        A: in std_logic_vector(2 downto 0);
        E: in std_logic;
        Y: out std_logic_vector(7 downto 0)
    ) ;
end Decoder_3x8_beh;

Architecture beh of Decoder_3x8_beh is
	
	function decode(A: in std_logic_vector(2 downto 0))
		return std_logic_vector is
			variable op : std_logic_vector(7 downto 0) := (others => '0');
			variable decimal : integer := 0;
			variable i : integer;
		begin
			for i in 0 to 2 loop
				if (A(i) = '1') then
					decimal := decimal + 2**i;
				else 
					decimal := decimal;
				end if;
			end loop;
	
			op(decimal) := '1';
			
			return op;
	
	end decode;

begin	

Decoder_3x8_beh : process( A, E )

begin
	
	if (E = '1') then
		Y <= decode(A);
	else
		Y <= "00000000";
	end if;
	
end process;
end beh;
