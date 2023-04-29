library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(6 downto 0);
       	output_vector: out std_logic_vector(6 downto 0));
end entity;

architecture DutWrap of DUT is
   component Multiplier_4bit is
     port (a: in std_logic_vector(3 downto 0); b: in std_logic_vector(2 downto 0); m: out std_logic_vector(6 downto 0));
   end component;
begin

   add_instance: Multiplier_4bit
			port map (
					a(3) => input_vector(6),
					a(2) => input_vector(5),
					a(1) => input_vector(4),
					a(0) => input_vector(3),
					
					b(2) => input_vector(2),
					b(1) => input_vector(1),
					b(0) => input_vector(0),

					m(6) => output_vector(6),					
					m(5) => output_vector(5),					
					m(4) => output_vector(4),					
					m(3) => output_vector(3),					
					m(2) => output_vector(2),					
					m(1) => output_vector(1),					
					m(0) => output_vector(0)					
					
					);

end DutWrap;

