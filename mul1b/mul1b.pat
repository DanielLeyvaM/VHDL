--PUERTOS
--sentido   nombre  tamaño  tipo
--entrada
in x                        B;
in y                        B;
in ci                       B;
in si                       B;
--salida
out co                      B;
out so                      B;
--alimentacion
in  vdd                     B;
in  vss                     B;

--ESTÍMULOS
--<tiempo>: x   y   ci  si  co  so  vdd vss
begin
    <0ns>:  0   0   0   0   ?*  ?*  1   0;
---------------------------------------    
  <+50ns>:  0   0   0   0   ?*  ?*  1   0;    
  <+50ns>:  0   0   0   1   ?*  ?*  1   0;    
  <+50ns>:  0   0   1   0   ?*  ?*  1   0;    
  <+50ns>:  0   0   1   1   ?*  ?*  1   0;    
  <+50ns>:  0   1   0   0   ?*  ?*  1   0;    
  <+50ns>:  0   1   0   1   ?*  ?*  1   0;    
  <+50ns>:  0   1   1   0   ?*  ?*  1   0;    
  <+50ns>:  0   1   1   1   ?*  ?*  1   0;
      
  <+50ns>:  1   0   0   0   ?*  ?*  1   0;    
  <+50ns>:  1   0   0   1   ?*  ?*  1   0;    
  <+50ns>:  1   0   1   0   ?*  ?*  1   0;    
  <+50ns>:  1   0   1   1   ?*  ?*  1   0;    
  <+50ns>:  1   1   0   0   ?*  ?*  1   0;    
  <+50ns>:  1   1   0   1   ?*  ?*  1   0;    
  <+50ns>:  1   1   1   0   ?*  ?*  1   0;    
  <+50ns>:  1   1   1   1   ?*  ?*  1   0;    

end;

