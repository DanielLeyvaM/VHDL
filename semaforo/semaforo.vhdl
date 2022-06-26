library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_arith.all;
use     ieee.std_logic_unsigned.all;

--ENTIDAD
entity semaforo is
port(
    clk,rst     : in std_logic;
    roj,ama,ver : out std_logic
);
 end semaforo;
 
 --ARQUITECTURA
 architecture arq of semaforo is
 --declaraciones
type estados is (alto, siga, preventivo);
signal maquina  : estados;
signal cont     : std_logic_vector(4 downto 0);

 --asignaciones
 begin
 --Control de transciciones
     transciciones: process(clk)
     begin   
         if(clk'event and clk=1) then
             if(rst=1) then
                 maquina <= alto;
                 cont <=0;
             else
                 --Transiciones
                 case(maquina) is
                     when alto => 
                        if (cont=29) then
                            cont <=0;
                            maquina <= siga;
                        else
                            cont <= cont+1;
                        end if;
                     when siga =>
                        if (cont=29) then
                            cont <=0;
                            maquina <= preventivo;
                        else
                            cont <= cont+1;
                        end if;
                    
                     when preventivo =>
                        if (cont=2) then
                            cont <=0;
                            maquina <= alto;
                        else
                            cont <= cont+1;
                        end if;
                 end case;
             end if;
         end if;
     end process;

 --Control de Salidas
     salidas: process(maquina)
     begin
         case(maquina) is
                     when alto => 
                         roj <= 1;
                         ama <= 0;
                         ver <= 0;
                     when siga =>
                         roj <= 0;
                         ama <= 0;
                         ver <= 1;
                     when preventivo =>
                         roj <= 0;
                         ama <= 1;
                         ver <= 0;
         end case;
     end process;

--Process monolítico 
--~ begin
    --~ control: process(clk)
    --~ begin   
        --~ if(clk'event and clk=1) then
            --~ if(rst=1) then
                --~ maquina <= alto;
                --~ cont <= 0;
            --~ else
                --~ --Transiciones
                --~ case(maquina) is
                    --~ when alto => 
                        --~ --Control Salidas
                        --~ roj <= 1;
                        --~ ama <= 0;
                        --~ ver <= 0;
                        --~ --Control Transiciones
                        --~ if (cont=29) then
                            --~ cont<= 0;
                            --~ maquina <= siga;
                        --~ else
                            --~ cont <= cont+1;
                        --~ end if;
                        
                    --~ when siga =>
                        --~ --Control salidas
                        --~ roj <= 0;
                        --~ ama <= 0;
                        --~ ver <= 1;
                        --~ --Control transiciones
                        --~ if (cont=29) then
                            --~ cont <= 0;
                            --~ maquina <= preventivo;
                        --~ else
                            --~ cont <= cont+1;
                        --~ end if;    
                    --~ when preventivo =>
                        --~ --Control de salidas
                        --~ roj <= 0;
                        --~ ama <= 1;
                        --~ ver <= 0;
                        --~ --Control de transiciones 
                        --~ if (cont=2) then
                            --~ cont <= 0;
                            --~ maquina <= alto;
                        --~ else
                            --~ cont <= cont+1;
                        --~ end if;
                --~ end case;
            --~ end if;
        --~ end if;
    --~ end process;
 end arq;
 
 
