--CABECERAS
library ieee;
use     ieee.std_logic_1164.all;

--ENTIDAD
entity mul5b is
port(
    X,Y:    in      std_logic_vector(4 downto 0); 
    Z  :    out     std_logic_vector(9 downto 0)
);

end mul5b;

--ARQUITECTURA
architecture arq of mul5b is
--declaraciones
component mul1b 
port(
    X,Y,Ci,Si:    in      std_logic; 
    co,so    :    out     std_logic
);

end component;

signal cx,sx    :   std_logic_vector(24 downto 0);
--no requiere señal espuria
--asignaciones
begin
                -- x     y    ci    si    co  so
u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));
u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));
u2: mul1b port map(x(2),y(0),cx(1),'0', cx(2),sx(2));
u3: mul1b port map(x(3),y(0),cx(2),'0', cx(3),sx(3));
u4: mul1b port map(x(4),y(0),cx(3),'0', cx(4),sx(4));

u5: mul1b port map(x(0),y(1), '0', sx(1),cx(5),sx(5));
u6: mul1b port map(x(1),y(1),cx(5),sx(2),cx(6),sx(6));
u7: mul1b port map(x(2),y(1),cx(6),sx(3),cx(7),sx(7));
u8: mul1b port map(x(3),y(1),cx(7),sx(4),cx(8),sx(8));
u9: mul1b port map(x(4),y(1),cx(8),cx(4),cx(9),sx(9));

                 -- x     y    ci    si    co  so
u10: mul1b port map(x(0),y(2), '0', sx(6),cx(10),sx(10));
u11: mul1b port map(x(1),y(2),cx(10),sx(7),cx(11),sx(11));
u12: mul1b port map(x(2),y(2),cx(11),sx(8),cx(12),sx(12));
u13: mul1b port map(x(3),y(2),cx(12),sx(9),cx(13),sx(13));
u14: mul1b port map(x(4),y(2),cx(13),cx(9),cx(14),sx(14));

u15: mul1b port map(x(0),y(3), '0', sx(11),cx(15),sx(15));
u16: mul1b port map(x(1),y(3),cx(15),sx(12),cx(16),sx(16));
u17: mul1b port map(x(2),y(3),cx(16),sx(13),cx(17),sx(17));
u18: mul1b port map(x(3),y(3),cx(17),sx(14),cx(18),sx(18));
u19: mul1b port map(x(4),y(3),cx(18),cx(14),cx(19),sx(19));

                  -- x     y    ci    si    co  so
u20: mul1b port map(x(0),y(4), '0',  sx(16),cx(20),sx(20));
u21: mul1b port map(x(1),y(4),cx(20),sx(17),cx(21),sx(21));
u22: mul1b port map(x(2),y(4),cx(21),sx(18),cx(22),sx(22));
u23: mul1b port map(x(3),y(4),cx(22),sx(19),cx(23),sx(23));
u24: mul1b port map(x(4),y(4),cx(23),cx(19),cx(24),sx(24));

z(0) <= sx(0);
z(1) <= sx(5);
z(2) <= sx(10);
z(3) <= sx(15);
z(8 downto 4) <= sx(24 downto 20);
z(9) <= cx(24);

end arq;


