--CABECERAS

library ieee;

use     ieee.std_logic_1164.all;


--Comportamental

use     ieee.std_logic_arith.all;

use     ieee.std_logic_unsigned.all;

--unsigned (sin bit significativo de signo)

--con unsigned 1001 = 9

--sin unsigned 1001 = -1




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

signal r0,r1: std_logic_vector(3 downto 0);



--~ component mul1b 
--~ 
port(
    
--~ X,Y,Ci,Si:    in      std_logic;
--~ co,so    :    out     std_logic
--~ );


--~ end component;



--~ signal cx,sx    :   std_logic_vector(3 downto 0);

--no requiere señal espuria

--asignaciones



begin

--JERARQUICA
                
-- x     y    ci    si    co  so

--~ u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));

--~ u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));

--~ u2: mul1b port map(x(0),y(1),'0', sx(1),cx(2),sx(2));

--~ u3: mul1b port map(x(1),y(1),cx(2),cx(1),cx(3),sx(3));


--~ z(0) <= sx(0);

--~ z(2 downto 1) <= sx(3 downto 2);

--~ z(3) <= cx(3);



--COMPORTAMENTAL


--Comportamental Combinacional- When,Else
  
--~ r0 <= "00"&x when  y(0)='1' else "0000";
  
--~ --r1 <= "0000" when y(1)='0' else '0'&x&'0';
  
--~ r1 <= '0'&x&'0' when y(1)='1' else "0000";
--~ z  <= r0+r1;




--Comportamental- Combinacional -With Select
  
--~ with y(0) select r0 <= "00"&x when '1',
                         
			--~ "0000" when others;
  
--~ with y(1) select r1 <= '0'&x&'0' when '1',

                         --~ "0000" when others;
  
--~ z <= r0+r1;




--Comportamental - Secuencial if,else
   
--~ multiplicacion: process(y)
   
--~ begin
   
--~ --If para renglon 0
       
--~ if (y(0)='0') then
 
           --~ r0 <= "0000";

       --~ else

           --~ r0 <= "00"&x;
       
--~ end if;
--If para renglon 1
       
--~ if (y(1)='0') then
 
           --~ r1 <= "0000";
       
--~ else
           
--~ r1 <= '0'&x&'0';
       
--~ end if;
   
--~ end process;

       
--~ z <= r0+r1; 

-- se declara fuera del process para no gastar mas memoria
--dentro del process se le asignaría un registro o flip flop extra




--Comportamental- Secuencial Case, When
  
multiplicacion: process (y)
  
begin
      
--Case para renglón 1
      
case(y(0)) is
          
when '1' =>
              
r0 <= "00"&x;
          
when others =>
              
r0 <= "0000";
      
end case;
    
      
--Case para renglón 2
      
case(y(1)) is
          
when '1' =>
              
r1 <= '0'&x&'0';
          
when others =>
              
r1 <= "0000";
          
end case;
      
end process;
    
      
z <= r0+r1;



--Comportamental- Secuencial- Case, When- con 1 solo case

--~ multiplicacion: process(y)

--~ begin
    
--~ case (y) is
        
--~ when "00" =>
            
--~ r0 <= "0000";
            
--~ r1 <= "0000";
        
--~ when "01" =>
            
--~ r0 <= "00"&x;
            
--~ r1 <= "0000";
        
--~ when "10" =>
            
--~ r0 <= "0000";
            
--~ r1 <= '0'&x&'0';
        
--~ when others =>
            
--~ r0 <= "00"&x;
            
--~ r1 <= '0'&x&'0';
    
--~ end case;

--~ end process;


--~ z <= r0+r1;


end arq;



