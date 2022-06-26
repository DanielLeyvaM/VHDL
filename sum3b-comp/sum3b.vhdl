--CABECERAS
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_arith.all;
use     ieee.std_logic_unsigned.all;

--ENTIDAD
entity sum3b is
port(
    a,b :   in  std_logic_vector(2 downto 0);
    ci  :   in  std_logic;
    so  :   out std_logic_vector(2 downto 0);
    co  :   out std_logic  --no lleva ;
);
end sum3b;

--ARQUITECTURA
architecture arq of sum3b is
signal resultado: std_logic_vector(3 downto 0);
    --~ component sum1b
    --~ port(
        --~ A,B,Ci:    in      std_logic; 
        --~ so,co :    out     std_logic  --no lleva ;
    --~ );
    --~ end component;

--~ signal cix,acarreo0,acarreo1  :   std_logic;
--asignaciones
--~ begin 
    --~ cix <= ci;  --señal espuria
      
    --~ x0  :   sum1b port map(
    --~ a =>    a(0),
    --~ b =>    b(0),
    --~ ci=>    cix,
    --~ so=>    so(0),
    --~ co=>    acarreo0 --no lleva coma
    --~ );
    
    --~ x1  :   sum1b port map(
    --~ a =>    a(1),
    --~ b =>    b(1),
    --~ ci=>    acarreo0,
    --~ so=>    so(1),
    --~ co=>    acarreo1 --no lleva coma
    --~ );
    
    --~ x2  :   sum1b port map(
    --~ a =>    a(2),
    --~ b =>    b(2),
    --~ ci=>    acarreo1,
    --~ so=>    so(2),
    --~ co=>    co --no lleva coma
    --~ );

--COMPORTAMENTAL
begin
resultado <= a+b+ci;
co <= resultado(3);
so <= resultado(2 downto 0);

end arq;    
    
