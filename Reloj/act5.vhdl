library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_arith.all;
use     ieee.std_logic_unsigned.all;

--entidad--
entity act5 is
port(
    clk,rst,ctrl,ctrl1 : in std_logic;
    um,dm,uh,dh          : out std_logic_vector (3 downto 0)
);
end act5;
--arquitectura--
architecture arq1 of act5 is
--Declaraciones--
    signal mum,mdm,muh,mdh : std_logic_vector (3 downto 0);
    signal cum,cdm,cuh,cdh : std_logic_vector (3 downto 0);
    signal stop:std_logic;
    type estados is (pausa,cuenta);
    signal maquina:estados;
--Asignaciones--
begin

--------RELOJ--------------------
    conteo:process(clk)
    begin
        if(clk'event and clk=1) then
            if(rst=1) then 
                mum<= 0;
                mdm<= 0;
                muh<= 0;
                mdh<= 0;
            else
                    if (mum=9) then
                        mum<=0;
                        if(mdm=5)then
                            mdm<=0;
                            if(muh=9) then
                                muh<=0;
                                mdh<=mdh+1;
                            else
                                if(mdh=2)then
                                    if(muh=3)then
                                        mdh<=0;
                                        muh<=0;
                                    else
                                        muh<=muh+1;
                                    end if;
                                else
                                    muh<=muh+1;
                                end if;
                            end if;
                        else
                            mdm<=mdm+1;
                        end if;
                    else
                        mum <= mum + 1;
                    end if;
                end if;
            end if;
    end process;

--CRONOMETRO--
conteo1:process(clk,ctrl)
    begin
        if(clk'event and clk=1) then
            if(rst=1) then 
                cum<= 0;
                cdm<= 0;
                cuh<= 0;
                cdh<= 0;
                stop<=0;
                maquina<=pausa;
            else
                case(maquina) is
                when pausa=>
                    --asignaciones
                    --transiciones
                if(ctrl1=1)then
                    maquina <=cuenta;
                end if;
                when cuenta=>
                ----asignaciones
                if(stop=0)then
                    if (cum=9) then
                        cum<=0;
                        if(cdm=5)then
                            cdm<=0;
                            if(cuh=9) then
                                cuh<=0;
                                if(cdh=5)then
                                    cdh<=0;
                                    cum<= "1001";
                                    cdm<= "0101";
                                    cuh<= "1001";
                                    cdh<= "0101";
                                    stop<=1;
                                else
                                    cdh<=cdh+1;
                                end if;
                            else
                            cuh<=cuh+1;
                            end if;
                        else
                            cdm<=cdm+1;
                        end if;
                    else
                        cum<=cum+1;
                    end if;
                elsif(stop=1) then
                    cum<= "1001";
                    cdm<= "0101";
                    cuh<= "1001";
                    cdh<= "0101";
                end if;
                ----transiciones
                if(ctrl1=1)then
                    maquina<=pausa;
                end if;
                end case;
            end if;
        end if;
    end process;


salida:process(clk)
    begin
        if(clk'event and clk=1) then
if(ctrl=0) then
        um<=mum;
        dm<=mdm;
        uh<=muh;
        dh<=mdh;
elsif(ctrl=1) then
        um<=cum;
        dm<=cdm;
        uh<=cuh;
        dh<=cdh;
        end if;
        end if;
        end process;
end arq1;
