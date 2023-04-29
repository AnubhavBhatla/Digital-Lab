library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(7 downto 0);
       	output_vector: out std_logic_vector(10 downto 0));
end entity;

architecture DutWrap of DUT is
   component atm is
     port (input: in std_logic_vector(7 downto 0); a: out std_logic_vector(1 downto 0); b0: out std_logic; c: out std_logic_vector(5 downto 0); p: out std_logic_vector(1 downto 0));
   end component;
begin

   add_instance: atm
			port map (
					input(7) => input_vector(7),
					input(6) => input_vector(6),
					input(5) => input_vector(5),
					input(4) => input_vector(4),
					input(3) => input_vector(3),
					input(2) => input_vector(2),
					input(1) => input_vector(1),
					input(0) => input_vector(0),

					p(1) => output_vector(10),
					p(0) => output_vector(9),
					
					a(1) => output_vector(8),
					a(0) => output_vector(7),
					
					b0 => output_vector(6),
					
					c(5) => output_vector(5),					
					c(4) => output_vector(4),					
					c(3) => output_vector(3),					
					c(2) => output_vector(2),					
					c(1) => output_vector(1),					
					c(0) => output_vector(0)					
					
					);

end DutWrap;

