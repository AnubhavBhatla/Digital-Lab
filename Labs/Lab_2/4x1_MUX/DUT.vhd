library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component MUX_4x1 is
     port (I0, I1, I2, I3, S0, S1: in std_logic; Y: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX_4x1 
			port map (
					I3 => input_vector(5),
					I2 => input_vector(4),
					I1 => input_vector(3),
					I0 => input_vector(2),
					S1 => input_vector(1),
					S0 => input_vector(0),
					
					Y => output_vector(0)
			);
end DutWrap;

