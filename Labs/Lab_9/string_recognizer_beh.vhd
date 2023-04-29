library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cov_detect is
port(inp:in std_logic_vector(4 downto 0);
        reset,clock:in std_logic;
        outp: out std_logic);
end cov_detect;

architecture rch of cov_detect is

---------------Define state type here-----------------------------
type state is (rst,s1,s2,s3,s4); -- Fill the code
---------------Define signals of state type-----------------------
signal y_present,y_next: state:=rst;

begin
clock_proc:process(clock,reset)
begin
    if(clock='1' and clock' event) then
        if(reset='1') then
            y_present<=rst; -- Fill the code
        else
            y_present<=y_next;
        end if;
    end if;
    
end process;

state_transition_proc:process(inp,y_present)
begin
    case y_present is
        when rst=>
            if(unsigned(inp)=3) then
                y_next<=s1;
				else
					 y_next<=y_present;
				end if;
        when s1=>
            if(unsigned(inp)=15) then
                y_next<=s2;
				else
					 y_next<=y_present;
				end if;
        when s2=>
            if(unsigned(inp)=22) then
                y_next<=s3;
				else
					 y_next<=y_present;
				end if;
        when s3=>
            if(unsigned(inp)=9) then
                y_next<=s4;
				else
					 y_next<=y_present;
				end if;
        when s4=>
            if(unsigned(inp)=4) then
                y_next<=rst;
				else
					 y_next<=y_present;
				end if;
	 end case;
end process state_transition_proc;
op:process(y_present, y_next)
begin
	if((y_present = s4) AND (y_next = rst)) then
		outp<='1';
	else
		outp<='0';
	end if;
end process op;
end rch;