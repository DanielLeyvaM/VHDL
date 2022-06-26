library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--ENTIDAD
entity codalu is
port(
    clk,rst,ctrl: in std_logic;
    sal         : out std_logic_vector(3 downto 0)
);
end codalu;

--ARQUITECTURA
architecture arq of codalu is
--declaraciones
type estados is(digito0,digito1,digito2,digito3,digito4,digito5,
                digito6,digito7,digito8);
signal maquina:  estados;
--asignaciones
begin
--Control transiciones
transiciones:process(clk)
begin
    if (clk'event and clk=1) then
        if(rst=1) then
            maquina <= digito0;
        else
            case(maquina) is
                when digito0 => 
                    if (ctrl=0) then
                        maquina <= digito1;
                    else
                        maquina <= digito4;
                    end if;
                when digito1 => 
                    if (ctrl=0) then
                        maquina <= digito2;
                    else
                        maquina <= digito4;
                    end if;
                when digito2 => 
                    if (ctrl=0) then
                        maquina <= digito3;
                    else
                        maquina <= digito4;
                    end if;
                when digito3 => 
                    maquina <= digito4;
                when digito4 => 
                    maquina <= digito5;
                when digito5 =>
                    if (ctrl=0) then
                        maquina <= digito6;
                    else
                        maquina <= digito8;
                    end if;
                when digito6 => 
                    if (ctrl=0) then
                        maquina <= digito7;
                    else
                        maquina <= digito8;
                    end if;
                when digito7 => 
                    maquina <= digito8;
                when digito8 => 
                    maquina <= digito0;
            end case;
        end if;
    end if;
end process;

--Contraol Salidas
salidas:process(maquina)
begin
    case(maquina) is
                when digito0 => 
                    sal <= "0010";
                when digito1 => 
                    sal <= "0001";
                when digito2 => 
                    sal <= "0101";
                when digito3 => 
                    sal <= "0101";
                when digito4 => 
                    sal <= "0000";
                when digito5 => 
                    sal <= "0000";
                when digito6 => 
                    sal <= "0111";
                when digito7 => 
                    sal <= "1001";
                when digito8 => 
                    sal <= "0100";
            end case;
end process;

end arq;
