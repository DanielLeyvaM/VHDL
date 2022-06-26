library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity crono9 is
port(
    clk,rst,ctrl: in std_logic;
    sal         : out std_logic_vector(3 downto 0)
);
end crono9;

--ARQUITECTURA
architecture arq of crono9 is
--declaraciones
signal mem  : std_logic_vector(3 downto 0); 
type estados is (pausa, cuenta);
signal maquina: estados;
--Memoria

--asignaciones
--Contador Ascendente
 begin
      conteo: process(clk)
      begin
          if (clk'event and clk=1) then 
              if (rst=1) then 
                mem <= 0;
                maquina <=pausa;
              else
                case (maquina) is
                    when pausa =>
                        --asignaciones
                        
                        --transiciones
                        if (ctrl=1) then
                            maquina <= cuenta;
                        end if;
                    when cuenta =>
                        --asignaciones
                        if (mem=9) then
                            mem <=0;
                        else
                            mem <= mem+1;
                        end if;
                        --transiciones
                        if (ctrl=1) then
                            maquina <= pausa;
                        end if;
                 end case;
                 end if;
          end if;
      end process;
  sal <= mem;

end arq;
