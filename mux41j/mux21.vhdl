--CABECERA
library ieee;
use ieee.std_logic_1164.all;

--ENTIDAD
entity mux21 is
port(
    A,B,S:  in  std_logic;
    X    :  out std_logic

);
end mux21;

--ARQUITECTURA
architecture arq of mux21 is
begin
X<=(A AND NOT(S))OR(B AND S);

end arq;
