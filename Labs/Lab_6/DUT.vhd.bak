library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(15 downto 0);
       	output_vector: out std_logic_vector(8 downto 0));
end entity;

architecture DutWrap of DUT is
   component Adder_8bit is
     port (a,b: in std_logic_vector(7 downto 0); Y: out std_logic_vector(7 downto 0); Cout: out std_logic);
   end component;
begin

   add_instance: Adder_8bit
			port map (
					a(7) => input_vector(15),
					a(6) => input_vector(14),
					a(5) => input_vector(13),
					a(4) => input_vector(12),
					a(3) => input_vector(11),
					a(2) => input_vector(10),
					a(1) => input_vector(9),
					a(0) => input_vector(8),
					b(7) => input_vector(7),
					b(6) => input_vector(6),
					b(5) => input_vector(5),
					b(4) => input_vector(4),
					b(3) => input_vector(3),
					b(2) => input_vector(2),
					b(1) => input_vector(1),
					b(0) => input_vector(0),

					Cout => output_vector(8),
					Y(7) => output_vector(7),					
					Y(6) => output_vector(6),					
					Y(5) => output_vector(5),					
					Y(4) => output_vector(4),					
					Y(3) => output_vector(3),					
					Y(2) => output_vector(2),					
					Y(1) => output_vector(1),					
					Y(0) => output_vector(0)					
					
					);

end DutWrap;

