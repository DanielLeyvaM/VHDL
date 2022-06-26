library ieee;
use     
ieee.std_logic_1164.all;
use     
ieee.std_logic_arith.all;

use     ieee.std_logic_unsigned.all;


--entidad--

entity act4 is
port(
    
clk,rst : in std_logic;
    
um,dm,uh,dh          : out std_logic_vector (3 downto 0)

);

end act4;

--arquitectura--

architecture arq1 of act4 is

--Declaraciones--
    
signal mum,mdm,muh,mdh : std_logic_vector (3 downto 0);


--Asignaciones--

begin


--------RELOJ--------------------
    
conteo:process(clk)
    
begin
        
if(clk'event and clk=1) then
            
if(rst=1) then 
                
mum<= 0;
                
mdm<= 0;
                
muh<= 0;
                
mdh<= 0;
            
else
                    
if (mum=9) then
                        
mum<=0;
                        
if(mdm=5)then
                            
mdm<=0;
                            
if(muh=9) then
                                
muh<=0;
                                
mdh<=mdh+1;
                            
else
                                
if(mdh=2)then
                                    
if(muh=3)then
                                        
mdh<=0;
                                        
muh<=0;
                                    
else
                                        
muh<=muh+1;
                                    
end if;
                                
else
                                    
muh<=muh+1;
                                
end if;
                            
end if;
                        
else
                            
mdm<=mdm+1;
                        
end if;
                    
else
                        
mum <= mum + 1;
                    
end if;

                
end if;
            
end if;
        
um<=mum;
        
dm<=mdm;
        
uh<=muh;
        
dh<=mdh;
    
end process;


end arq1;

