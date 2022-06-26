--CABECERAS
library ieee;
use     ieee.std_logic_1164.all;

--ENTIDAD
entity mul4b is
port(
    X,Y:    in      std_logic_vector(3 downto 0); 
    Z  :    out     std_logic_vector(7 downto 0)
);

end mul4b;

--ARQUITECTURA
architecture arq of mul4b is
--declaraciones
component mul1b 
port(
    X,Y,Ci,Si:    in      std_logic; 
    co,so    :    out     std_logic
);

end component;

signal cx,sx    :   std_logic_vector(15 downto 0);
--no requiere señal espuria
--asignaciones
begin
                -- x     y    ci    si    co  so
u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));
u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));
u2: mul1b port map(x(2),y(0),cx(1),'0', cx(2),sx(2));
u3: mul1b port map(x(3),y(0),cx(2),'0', cx(3),sx(3));

u4: mul1b port map(x(0),y(1),'0',  sx(1),cx(4),sx(4));
u5: mul1b port map(x(1),y(1),cx(4),sx(2),cx(5),sx(5));
u6: mul1b port map(x(2),y(1),cx(5),sx(3),cx(6),sx(6));
u7: mul1b port map(x(3),y(1),cx(6),cx(3),cx(7),sx(7));

                 -- x     y    ci    si    co  so
u8: mul1b port map(x(0),y(2), '0', sx(5),cx(8),sx(8));
u9: mul1b port map(x(1),y(2),cx(8),sx(6),cx(9),sx(9));
u10: mul1b port map(x(2),y(2),cx(9),sx(7),cx(10),sx(10));
u11: mul1b port map(x(3),y(2),cx(10),cx(7),cx(11),sx(11));

u12: mul1b port map(x(0),y(3), '0', sx(9),cx(12),sx(12));
u13: mul1b port map(x(1),y(3),cx(12),sx(10),cx(13),sx(13));
u14: mul1b port map(x(2),y(3),cx(13),sx(11),cx(14),sx(14));
u15: mul1b port map(x(3),y(3),cx(14),cx(11),cx(15),sx(15));

z(0) <= sx(0);
z(1) <= sx(4);
z(2) <= sx(8);
z(6 downto 3) <= sx(15 downto 12);
z(7) <= cx(15);

end arq;


