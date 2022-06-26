--CABECERAS
library ieee;
use     ieee.std_logic_1164.all;

--ENTIDAD
entity mul3b is
port(
    X,Y:    in      std_logic_vector(2 downto 0); 
    Z  :    out     std_logic_vector(5 downto 0)
);

end mul3b;

--ARQUITECTURA
architecture arq of mul3b is
--declaraciones
component mul1b 
port(
    X,Y,Ci,Si:    in      std_logic; 
    co,so    :    out     std_logic
);

end component;

signal cx,sx    :   std_logic_vector(8 downto 0);
--no requiere señal espuria
--asignaciones
begin
                -- x     y    ci    si    co  so
u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));
u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));
u2: mul1b port map(x(2),y(0),cx(1),'0', cx(2),sx(2));

u3: mul1b port map(x(0),y(1),'0', sx(1),cx(3),sx(3));
u4: mul1b port map(x(1),y(1),cx(3),sx(2),cx(4),sx(4));
u5: mul1b port map(x(2),y(1),cx(4),cx(2),cx(5),sx(5));

u6: mul1b port map(x(0),y(2),'0', sx(4),cx(6),sx(6));
u7: mul1b port map(x(1),y(2),cx(6),sx(5),cx(7),sx(7));
u8: mul1b port map(x(2),y(2),cx(7),cx(5),cx(8),sx(8));

z(0) <= sx(0);
z(1) <= sx(3);
z(4 downto 2) <= sx(8 downto 6);
z(5) <= cx(8);

end arq;


