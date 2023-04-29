library ieee;
use ieee.std_logic_1164.all;
library work;
use work.flipflops.all; 

entity sequence_generator_structural is
port (reset,clock: in std_logic;
y:out std_logic_vector(3 downto 0));
end entity sequence_generator_structural;
architecture struct of sequence_generator_structural is 
signal D3,D2,D1,D0 :std_logic;
signal Q:std_logic_vector(3 downto 0);
begin
-- write the equations here
D3<=((NOT Q(0)) AND ((Q(2) AND Q(1)) XOR Q(3)));
D2<=((NOT Q(0)) AND (Q(2) XOR Q(1)));
D1<=((NOT Q(1)) AND (NOT Q(0)));
D0<='0';
y(3)<=Q(3);
y(2)<=Q(2);
y(1)<=Q(1);
y(0)<=Q(0);

-- Do the port mapping                          --asynchronous reset
--Q0
dff_0  : dff2 port map(D => D0, clk => clock, reset => reset, Q => Q(0));

--Q1
dff_1  : dff2 port map(D => D1, clk => clock, reset => reset, Q => Q(1));

--Q2
dff_2  : dff2 port map(D => D2, clk => clock, reset => reset, Q => Q(2));

--Q3
dff_3  : dff2 port map(D => D3, clk => clock, reset => reset, Q => Q(3));


end struct;