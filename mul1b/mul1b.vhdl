library ieee;
use     ieee.std_logic_1164.all;

--ENTIDAD
entity mul1b is
port(
    X,Y,Ci,Si:    in      std_logic; 
    so,co    :    out     std_logic
);

end mul1b;

--ARQUITECTURA
architecture arq of mul1b is
--declaraciones
signal x1   :   std_logic;

component sum1b
port(
    A,B,Ci:    in      std_logic; 
    so,co :    out     std_logic
);

end component;
--asignaciones
begin 
    x1 <= X AND Y;

    y0 :   sum1b port map (Si,x1,Ci,so,co);
end arq;
