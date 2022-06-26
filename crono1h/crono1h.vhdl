library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity crono1h is
port(
    clk,rst,ctrl  : in std_logic;
    uni,dec,unim,decm       : out std_logic_vector(3 downto 0)
);
end crono1h;

--ARQUITECTURA
architecture arq of crono1h is
--declaraciones
signal memuni,memdec,memunim,memdecm   : std_logic_vector(3 downto 0); 
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
            if (ctrl=1)  then
                maquina <= pausa;
            end if;
            end case; 
        end if;
        
    end if;
end process;


--Conteo Unidades Segundos
contuni: process(clk)
     begin
        if (clk'event and clk=1) then 
            if (rst=1) then 
                 memuni <= 0;
                
            else
            
            --Control Ascendente
            if (maquina=cuenta) then
                memuni <= memuni+1;
                if (memuni=9) then
                    memuni <=0;
                if (memdecm=5 and memunim=9 ) then
                    memuni<=9;
                end if;
                end if;
             end if;
             end if;
        end if;
     end process;
 uni <= memuni;
 
--Conteo Decenas Segundos
contdec:process(clk)
begin
     if (clk'event and clk=1) then 
             if (rst=1) then 
                 memdec <= 0;
            --Control Ascendente 
            else 
                if (maquina=cuenta) then
                if (memuni=9) then
                    memdec <= memdec+1;
                if(memdec=5 and memuni=9) then
                    memdec <= 0;
                if (memunim=9 and memdecm=5) then
                    memdec<=5;
                end if;
                end if;
             end if;
             end if;
                end if;
    end if;
end process;
dec <= memdec;

--Conteo Unidades Minutos
contunim: process(clk)
     begin
        if (clk'event and clk=1) then 
            if (rst=1) then 
                 memunim <= 0;
            else
            if (maquina=cuenta) then
                if (memuni=9 and memdec=5) then  
            --Control Ascendente
                memunim <= memunim+1;
                if (memunim=9) then
                    memunim <=0;
                if (memdecm=5 and memunim=9 and memdec=5 and memuni=9) then
                    memunim<=9;
                end if;
                end if;
                end if;
             end if;
            end if;
        end if;
     end process;
 unim <= memunim;
 
--Conteo Decenas Minutos
contdecm:process(clk)
begin
     if (clk'event and clk=1) then 
            if (rst=1) then 
                 memdecm <= 0;
                 
                 
             --Control Ascendente 
            else 
            if (maquina=cuenta) then
            if (memunim=9 and memdec=5 and memuni=9 and memdecm<5) then
                    memdecm <= memdecm+1;
                if (memdecm=5 and memunim=9 and memdec=5 and memuni=9) then
                    memdecm<=5;
                                  
                end if;
             end if;
             end if;
            end if;
    end if;
end process;
decm <= memdecm;


end arq;
