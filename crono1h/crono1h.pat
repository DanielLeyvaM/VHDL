--PUERTOS
--Entrada
in  clk                 B; 
in  rst                 B; 
in  ctrl                B; 
--Salida
out decm (3 downto 0)    X;
out unim (3 downto 0)    X;
out dec (3 downto 0)     X;
out uni (3 downto 0)     X;

--Alimentacion
in vdd                  B;
in vss                  B;

--ESTIMULOS
begin
-- <tiempo>:     clk rst ctrl    uni dec unim decm vdd vss
--rest=1
<0ns>:            0   1   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          1   1   0       ?*  ?*  ?*  ?*  1   0;  
--reset=0
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;   
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;   
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;   
   
--ctrl=1
<+50ns>:          0   0   1       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   1       ?*  ?*  ?*  ?*  1   0;       

--ctrl=0
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      

--ctrl=1
<+50ns>:          0   0   1       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   1       ?*  ?*  ?*  ?*  1   0;

<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;

--ctrl=0
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;    
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;

--ctrl=1
<+50ns>:          0   0   1       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   1       ?*  ?*  ?*  ?*  1   0; 

<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      


--Sobreescribir 00:58 en el cronometro    
crono1h.memdec(3 downto 0) <= X"5";     
crono1h.memuni(3 downto 0) <= X"8";  
         
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 

--Sobreescribir 01:58 en el cronometro 
crono1h.memdecm(3 downto 0) <= X"0"; 
crono1h.memunim(3 downto 0) <= X"1";     
crono1h.memdec(3 downto 0) <= X"5";     
crono1h.memuni(3 downto 0) <= X"8";     
    
     
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
 

--Sobreescribir 09:58 en el cronometro     
crono1h.memdecm(3 downto 0) <= X"0"; 
crono1h.memunim(3 downto 0) <= X"9";     
crono1h.memdec(3 downto 0) <= X"5";     
crono1h.memuni(3 downto 0) <= X"8";     
    
     
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;
      
  

--Sobreescribir 19:58 en el cronometro     
crono1h.memdecm(3 downto 0) <= X"1"; 
crono1h.memunim(3 downto 0) <= X"9";     
crono1h.memdec(3 downto 0) <= X"5";     
crono1h.memuni(3 downto 0) <= X"8";     
       
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      

--ctrl=1
<+50ns>:          0   0   1       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   1       ?*  ?*  ?*  ?*  1   0;

<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;

--ctrl=0
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;    
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;

--ctrl=1
<+50ns>:          0   0   1       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   1       ?*  ?*  ?*  ?*  1   0; 

<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0; 

--Sobreescribir 59:58 en el cronometro     
crono1h.memdecm(3 downto 0) <= X"5"; 
crono1h.memunim(3 downto 0) <= X"9";     
crono1h.memdec(3 downto 0) <= X"5";     
crono1h.memuni(3 downto 0) <= X"8";     
    
     
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;  
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          0   0   0       ?*  ?*  ?*  ?*  1   0;      
<+50ns>:          1   0   0       ?*  ?*  ?*  ?*  1   0;  
    
end;


     
