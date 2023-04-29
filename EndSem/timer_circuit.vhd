library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM is
	port( inp_switch:in std_logic_vector(2 downto 0);
			reset, clock_1, clock_50:in std_logic;
			op:out std_logic_vector(1 downto 0));
end FSM;

architecture beh1 of FSM is

---------------Define state type here-----------------------------
type state is (rst,t1,t2,t3); -- Fill the code
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;

begin

clock_proc:process(clock_1,reset)
begin
    if(clock_1='1' and clock_1' event) then
        if(reset='1') then
            y_present<=rst;
        else
            y_present<=y_next;
        end if;
    end if;
    
end process;

state_transition_proc:process(inp_switch)
begin
    case inp_switch is
        when "001"=>
            y_next <= t1;
		  when "010"=>
            y_next <= t2;
		  when "100"=>
            y_next <= t3;
		  when others=>
				y_next <= y_present;
	 end case;
end process;

process(y_present, y_next)
begin
	if (y_present = rst) then
		op <= "00";
	elsif (y_next = t1) then
		op <= "01";
	elsif (y_next = t2) then
		op <= "10";
	elsif (y_next = t3) then
		op <= "11";
	end if;

end process;
end beh1;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_ckt is
port (clock_1, clock_50, reset : in std_logic;
		out_LED : out std_logic_vector(3 downto 0);
		op : in std_logic_vector(1 downto 0));
-- timer_inp is State Machine output
end entity timer_ckt;
-- Define architecture body
architecture beh2 of timer_ckt is

begin
process(clock_50)
variable timer1 : integer range 0 to 300E6 := 1;
-- 500E6 means 500 x 10 ^ 6
-- the above variable will count the number
-- of clock pulses till it reaches required
-- number of seconds
-- Use similar 2 other variables for timer2, timer3
variable timer2 : integer range 0 to 400E6 := 1;
variable timer3 : integer range 0 to 550E6 := 1;
begin
-- Fill your code here
-- You may have to use multiple nested if condition here
-- e.g. clock_50'event, reset, condition for increment etc.
-- reset will initialize the timer1, timer2 and timer3 with
-- the value 1
-- timer1 := timer1 + 1;
-- this is the syntax to increment timer variable
-- remember : you have to assign LED here also
if (reset = '1') then
	timer1 := 1;
	timer2 := 1;
	timer3 := 1;
	out_LED <= "1000";
elsif (clock_50' event and clock_50 = '1') then
	case op is
		when "01" =>
			timer1 := timer1 + 1;
			if (timer1 = 300E6) then
				out_LED <= "0000";
			elsif (timer1 mod 50E6 = 0) then
				out_LED <= "0001";
			end if;
		when "10" =>
			timer2 := timer2 + 1;
			if (timer2 = 400E6) then
				out_LED <= "0000";
			elsif (timer2 mod 50E6 = 0) then
				out_LED <= "0010";
			end if;
		when "11" =>
			timer3 := timer3 + 1;
			if (timer3 = 550E6) then
				out_LED <= "0000";
			elsif (timer3 mod 50E6 = 0) then
				out_LED <= "0100";
			end if;
	end case;
end if;

end process;
end beh2;