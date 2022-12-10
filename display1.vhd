-- DISPLAY FUNÇÕES LÓGICAS

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display1 is
Port (
        eA,eB,eC,eD	: in  bit;
		a,b,c,d,e,f,g	: out bit);
end display1;

architecture Behavioral of display1 is

begin
    
a <= (NOT eD AND NOT eC AND NOT eB AND eA) OR  
		(NOT eD AND eC AND NOT eB AND NOT eA);
b <= (NOT eD AND eC AND NOT eB AND eA) OR  
		(NOT eD AND eC AND eB AND NOT eA);
c <= (NOT eD AND NOT eC AND  eB AND eA);
d <= (NOT eD AND NOT eC AND NOT eB AND eA) OR  
		(NOT eD AND eC AND NOT eB AND NOT eA) OR
                (NOT eD AND eC AND eB AND  eA);
e <= (NOT eD AND NOT eC AND NOT eB AND  eA) OR  
		(NOT eD AND NOT eC AND  eB AND  eA) OR
                (NOT eD AND eC AND NOT eB AND NOT eA) OR  
		(NOT eD AND eC AND NOT eB AND eA) OR
                (NOT eD AND  eC AND  eB AND  eA) OR  
		( eD AND NOT eC AND NOT eB AND eA);
f <=            (NOT eD AND NOT eC AND NOT eB AND eA) OR  
		(NOT eD AND NOT eC AND  eB AND NOT eA) OR
                (NOT eD AND NOT eC AND eB AND  eA) OR  
		(NOT eD AND  eC AND  eB AND  eA);
g <=            (NOT eD AND NOT eC AND NOT eB AND NOT eA) OR  
		(NOT eD AND NOT eC AND NOT eB AND  eA) OR
                (NOT eD AND  eC AND  eB AND  eA);
                
end Behavioral;
