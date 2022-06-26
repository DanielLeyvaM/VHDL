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
--Funcional
--X<=(A AND NOT(S))OR(B AND S);

--Comportamental
--Combinacional WHEN-ELSE
--x <= a when s='0' else b;

--Combinacional WITH-SELECT
--with s select x <= a when '0', b when others;
--when others se usa para otros valores (0 suave), (1 con ruido)  

--Comportamental-Secuencial-IF,ELSE
--seleccion: process(s)
--begin
    --codigo secuencial
    --if (s='0') then
        --x <= a;
    --else
        --x <= b;
    --end if;
--end process;

--Comportamental -Secuencial-Case-When
seleccion: process(s)
begin
    case(s) is 
        when '0' =>
            x <= a;
        when others =>
            x <= b;
    end case;
end process;    

end arq;
