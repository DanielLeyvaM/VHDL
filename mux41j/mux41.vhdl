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
--Sintesis Jerarquica
--declaraciones
    component mux21
    port(
        A,B,S:  in  std_logic;
        X    :  out std_logic

    );
    end component;

signal x0,x1,x2 :    std_logic;

--asignaciones
begin
--señal espuria
    x <=x2;
    
    U0: mux21 port map(
        A => a, 
        B => b,
        S => s(0),
        X => x0   --no lleva coma
    );
    
    U1: mux21 port map(
        A => c, 
        B => d,
        S => s(0),
        X => x1   --no lleva coma
    );
    
    U2: mux21 port map(
        A => x0, 
        B => x1,
        S => s(1),
        X => x2   --no lleva coma
    );

end arq;
