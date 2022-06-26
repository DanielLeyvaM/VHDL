library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity crono59 is
port(
    clk,rst,ctrl: in std_logic;
    uni,dec     : out std_logic_vector(3 downto 0)
);
end crono59;

--ARQUITECTURA
architecture arq of crono59 is
--declaraciones
signal memuni,memdec : std_logic_vector(3 downto 0); 
type estados is (pausa,cuenta);
signal maquina: estados;
--Memorias

--asignaciones

begin
--Control Transiciones
transiciones: process (clk)
begin
    if (clk'event and clk=1) then
        if (rst=1) then
            maquina <= pausa;
        else
    case(maquina) is
        when pausa =>
            --Transiciones
            if (ctrl=1) then
                maquina <= cuenta;
            end if;
            --Asignaciones
            
        when cuenta =>
            if (ctrl=1) then
                maquina <= pausa;
            end if;
    end case; 
        end if;
    end if;
end process;


--Conteo Unidades
     contuni: process(clk)
     begin
        if (clk'event and clk=1) then 
            if (rst=1) then 
                 memuni <= 0;
            else
            if (maquina=cuenta) then
                
            --Control Ascendente
                memuni <= memuni+1;
                if (memuni=9) then
                    memuni <=0;
                end if;
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
            --Control Ascendente 
            else 
                if (memuni=9) then
                    memdec <= memdec+1;
                if(memdec=5 and memuni=9) then
                    memdec <= 0;
                end if;
             end if;
             end if;
    end if;
end process;
dec <= memdec;

end arq;
