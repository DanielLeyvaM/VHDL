--CABECERAS
library ieee;
use     
ieee.std_logic_1164.all;

use     ieee.std_logic_arith.all;

use     ieee.std_logic_unsigned.all;



--ENTIDAD

entity sum2b is

port(
    a,b :   in  std_logic_vector(1 downto 0);

    ci  :   in  std_logic;
    
so  :   out std_logic_vector(1 downto 0);
    
co  :   out std_logic  --no lleva ;

);

end sum2b;



--ARQUITECTURA

architecture arq of sum2b is

signal resultado: std_logic_vector(2 downto 0);
    
--~ component sum1b
    
--~ port(
        
--~ A,B,Ci:    in      std_logic; 
        
--~ so,co :    out     std_logic  
--no lleva ;
    --~ );
    
--~ end component;

--~ signal cix,acarreo  :   std_logic;


--asignaciones


--begin 

--JERARQUICO
    
--~ cix <= ci;  
--señal espuria
      
    
--~ x0  :   sum1b port map(

--~ a =>    a(0),	
    
--~ b =>    b(0),
    
--~ ci=>    cix,
    
--~ so=>    so(0),
    
--~ co=>    acarreo --no lleva coma
    --~ );
    
    

--~ x1  :   sum1b port map(
    
--~ a =>    a(1),
    
--~ b =>    b(1),
    
--~ ci=>    acarreo,
    
--~ so=>    so(1),
    
--~ co=>    co --no lleva coma
    --~ );


--COMPORTAMENTAL

begin

resultado <= a+b+ci;

co <= resultado(2);

so <= resultado(1 downto 0);


end arq;    
    
    
