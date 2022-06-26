library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity cont4b is
port(
    clk,rst,ctrl: in std_logic;
    sal         : out std_logic_vector(3 downto 0)
);
end cont4b;

--ARQUITECTURA
architecture arq of cont4b is
--declaraciones
signal mem  : std_logic_vector(3 downto 0); 
--Memoria

--asignaciones
--Contador Ascendente
--~ begin
    --~ conteo: process(clk)
    --~ begin
        --~ if (clk'event and clk =1) then 
            --~ if (rst=1) then 
                --~ mem <= 0;
            --~ else 
                --~ mem <= mem+1;
            --~ end if;
        --~ end if;
    --~ end process;

--~ sal <= mem;

--Contador Ascendente/Descendente
begin
     conteo: process(clk)
     begin
         if (clk'event and clk=1) then 
             if (rst=1) then 
                 mem <= 0;
             else
             if (ctrl=1) then
                mem <= mem-1;
             else 
                 mem <= mem+1;
             end if;
             end if;
         end if;
     end process;
 sal <= mem;

end arq;
