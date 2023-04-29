library ieee;
use ieee.std_logic_1164.all;

entity vowel_detector_beh is
    port (
        X: in std_logic_vector(3 downto 0);
        Y: out std_logic
    ) ;
end vowel_detector_beh;

architecture beh of vowel_detector_beh is

begin
vowel_detector_beh : process( X )
begin

	Y <= (((X(3) AND X(2)) XOR X(1)) NOR  X(0));
	
end process;
end beh;
