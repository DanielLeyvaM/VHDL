--PUERTOS
--Entrada
in  clk                 B; 
in  rst                 B; 
in  ctrl                B; 
--Salida
out sal (4 downto 0)    X;
--Alimentacion
in vdd                  B;
in vss                  B;

--ESTIMULOS
begin
-- <tiempo>:     clk rst ctrl    sal vdd vss
--rest=1
<0ns>:            0   1   0       ?**  1   0; 
<+50ns>:          1   1   0       ?**  1   0;  
--reset=0
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
--ctrl=1
<+50ns>:          0   0   1       ?**  1   0;      
<+50ns>:          1   0   1       ?**  1   0;      
<+50ns>:          0   0   1       ?**  1   0;      
<+50ns>:          1   0   1       ?**  1   0;      
<+50ns>:          0   0   1       ?**  1   0;      
<+50ns>:          1   0   1       ?**  1   0;      
<+50ns>:          0   0   1       ?**  1   0;      
<+50ns>:          1   0   1       ?**  1   0;      
<+50ns>:          0   0   1       ?**  1   0;      
<+50ns>:          1   0   1       ?**  1   0;      
--ctrl=0
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
 --Escribir 30 en el contador
 --entidad.se??al (tama??o) <= X"valor"; --sobrescribir se??al 
cont5b.mem (4 downto 0 ) <= B"11101";
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
<+50ns>:          0   0   0       ?**  1   0;      
<+50ns>:          1   0   0       ?**  1   0;      
end;


     
