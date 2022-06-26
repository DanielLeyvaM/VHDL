library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity cont9b is
port(
    clk,rst,ctrl: in std_logic;
    sal         : out std_logic_vector(3 downto 0)
);
end cont9b;

--ARQUITECTURA
architecture arq of cont9b is
--declaraciones
signal mem  : std_logic_vector(3 downto 0); 
--Memoria

--asignaciones
--Contador Unidireccional Ascendente
 --~ begin
     --~ conteo: process(clk)
     --~ begin
         --~ if (clk'event and clk =1) then 
             --~ if (rst=1) then
                --~ mem <= 0;
             --~ else 
                --~ if(mem=9) then
                    --~ mem<=0;
                --~ else
                    --~ mem <= mem+1;
                --~ end if;
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
             --Conteo descendente
              elsif (ctrl=1) then
                 if (mem=0) then
                     mem <=9;
                 else
                     mem <= mem-1;
                 end if;
             --Conteo Ascendente
              else
                 if (mem=9) then
                     mem <=0;
                 else
                     mem <= mem+1;
                 end if;
              end if;
          end if;
      end process;
  sal <= mem;

end arq;
