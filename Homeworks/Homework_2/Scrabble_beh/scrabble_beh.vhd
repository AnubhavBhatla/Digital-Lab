library ieee;
use ieee.std_logic_1164.all;

entity scrabble_score_beh is
    port (
        X: in std_logic_vector(3 downto 0);
        Y: out std_logic
    ) ;
end scrabble_score_beh;

architecture beh of scrabble_score_beh is

begin
scrabble_score_beh : process( X )
begin

	Y <= ((X(3) XNOR X(2)) AND (X(1) XOR X(0)));
	
end process;
end beh;
