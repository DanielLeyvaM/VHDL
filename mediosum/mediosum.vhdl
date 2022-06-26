--CABECERA
library ieee;
use     ieee.std_logic_1164.all;

--ENTIDAD
entity mediosum is
port(
    A,B:        in    std_logic; 
    SUM, Co:    out   std_logic
); 
end mediosum;

--ARQUITECTURA
architecture arq of mediosum is
--declaraciones
asignaciones

begin
    sum <= a XOR b; 
    Co  <= a AND b;

end arq;

