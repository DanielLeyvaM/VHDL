--CABECERA
library ieee;
use ieee.std_logic_1164.all;

--ENTIDAD
entity mux41 is
port(
    A,B,C,D:  in  std_logic;
    S      :  in  std_logic_vector(1 downto 0);
    X      :  out std_logic

);
end mux41;

--ARQUITECTURA
architecture arq of mux41 is
--Sintesis Estructural (Nodos conectados)
--signal sn0,sn1,sn2,x0,x1,x2,x3,x4,x5,x6,x7 :    std_logic;

begin
--Sintensis Funcional (Ecuacion matematica)
--~ X<=(A AND NOT(S(1)) AND NOT(S(0))) 
--~ OR (B AND NOT(S(1)) AND S(0)) 
--~ OR (C AND S(1) AND NOT(S(0))) 
--~ OR (D AND S(1) AND S(0)); 

--Sintesis Estructural
--sn0 <= NOT(S(0));
--sn1 <= NOT(S(0));
--sn2 <= NOT(S(1));
--X0  <= A AND SN0;
--X1  <= B AND S(0);
--X2  <= c and sn1;
--x3  <= d and s(0);
--x4  <= x0 or x1;
--x5  <= x2 or x3;
--x6  <= x4 and sn2;
--x7  <= x5 and s(1);
--x   <= x6 or x7;

--Sintesis Comportamental
--Combinacional WHEN-ELSE
--x <= A when s="00" else
     --B when s="01" else
     --C when s="10" else
     --D;
--Para s más de 1 bit se utilizan comillas dobles

--Combinacional WITH-SELECT
--with s select x <= A when "00",
                   --B when "01",
                   --C when "10",
                   --D when others;

--Comportamental- Secuencial- IF, ELSE
--seleccion: process(s)
--begin
    --if (s="00") then 
        --x <= a;
    --elsif (s="01") then
        --x <= b;
    
    --elsif (s="10") then
        --x <= c;
    --else 
        --x <= d;
    --end if;
--end process; 

--Comportamental- Secuencial- case, when
seleccion: process(s)
begin
    case(s) is
        when "00" => 
            x <= a;
        when "01" => 
            x <= b;
        when "10" => 
            x <= c;
        when others => 
            x <= d;
    end case;
end process;

end arq;
