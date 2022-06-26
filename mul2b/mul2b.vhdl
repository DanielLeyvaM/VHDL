--CABECERAS

library ieee;

use     ieee.std_logic_1164.all;



--ENTIDAD

entity mul2b is

port(
    
    X,Y:    in      std_logic_vector(1 downto 0);

    Z  :    out     std_logic_vector(3 downto 0)
);


end mul2b;



--ARQUITECTURA

architecture arq of mul2b is

--declaraciones

component mul1b 

port(
    X,Y,Ci,Si:    in      std_logic;
 
    	 co,so    :    out     std_logic
);


end component;



signal cx,sx    :   std_logic_vector(3 downto 0);

--no requiere señal espuria


--asignaciones

begin
                
-- x     y    ci    si    co  so

u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));

u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));

u2: mul1b port map(x(0),y(1),'0', sx(1),cx(2),sx(2));

u3: mul1b port map(x(1),y(1),cx(2),cx(1),cx(3),sx(3));



z(0) <= sx(0);

z(2 downto 1) <= sx(3 downto 2);

z(3) <= cx(3);



end arq;


