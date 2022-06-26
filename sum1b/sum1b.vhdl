--CABECERA

library ieee;

use ieee.std_logic_1164.all;



--ENTIDAD

entity sum1b is

port(
    A,B,Ci:    in      std_logic;

      	 so,co :    out     std_logic

);


end 
sum1b;



--ARQUITECTURA

architecture arq of sum1b is


begin
    
    
	so  <= (A XOR B) XOR Ci;
    
	co <= ((A XOR B) AND Ci) OR (A AND B);

end arq;
