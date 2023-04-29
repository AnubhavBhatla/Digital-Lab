library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_controller is
	port( inp_switch:in std_logic_vector(2 downto 0);
			reset,clock_50, clock_1:in std_logic;
			out_LED: out std_logic_vector(3 downto 0));
end timer_controller;

architecture DutWrap of timer_controller is
   component FSM is
		port( inp_switch:in std_logic_vector(2 downto 0);
			reset, clock_1, clock_50:in std_logic;
			op:out std_logic_vector(1 downto 0));
	end component;
	
	signal output : op;
	signal input : inp_switch;
	
	component timer_ckt is
		port (clock_1, clock_50, reset : in std_logic;
				out_LED : out std_logic_vector(3 downto 0);
				op : in std_logic_vector(1 downto 0));
   end component;
	
begin
   add_instance: timer_ckt
			port map (
					
					
					input => inp_switch,
					reset => reset,
					clock_50 => clock_50,
					clock_1 => clock_1,
					
					out_LED => out_LED					
					
					);

end DutWrap;
