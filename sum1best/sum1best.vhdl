--CABECERAS

library ieee;

use ieee.std_logic_1164.all;



--ENTIDAD

entity sum1best is

port(
    A,B,Ci :   in std_logic;
    
So,Co:   out std_logic
);

end sum1best;



--ARQUITECTURA

architecture arq of sum1best is

signal x1,x3,x4:    std_logic;
 

begin
    
x1  <= A XOR B;
    
So <= x1 XOR Ci;
    
x3  <= x1 AND Ci;
    
x4  <= A AND B;
    
Co <= x3 OR x4;

end arq;
