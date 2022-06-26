library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity cont99 is
port(
    clk,rst,ctrl: in std_logic;
    uni,dec     : out std_logic_vector(3 downto 0)
);
end cont99;

--ARQUITECTURA
architecture arq of cont99 is
--declaraciones
signal memuni,memdec : std_logic_vector(3 downto 0); 
--Memorias

--asignaciones

--Conteo Unidades
begin
     contuni: process(clk)
     begin
         if (clk'event and clk=1) then 
             if (rst=1) then 
                 memuni <= 0;
             elsif (ctrl=1) then
                if (memuni=0) then
                    memuni <=9;
                else
                    memuni <= memuni-1;
                end if;
            else 
                if (memuni=9) then
                    memuni <=0;
                else
                 memuni <= memuni+1;
                end if;
             end if;
            end if;

     end process;
 uni <= memuni;
 
--Conteo Decenas
contdec:process(clk)
begin
     if (clk'event and clk=1) then 
             if (rst=1) then 
                 memdec <= 0;
            --Control Descendente
             elsif (ctrl=1) then
                if (memdec=0 and memuni=0) then
                    memdec <=9;
                elsif(memuni=0) then
                    memdec <= memdec-1;
                end if;
            --Control Ascendente 
            else 
                if (memdec=9 and memuni=9) then
                    memdec <=0;
                elsif(memuni=9) then
                    memdec <= memdec+1;
                end if;
             end if;
            end if;

     end process;
 dec <= memdec;

end arq;
