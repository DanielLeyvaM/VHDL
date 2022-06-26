--PUERTOS
--sentido   nombre      tamaño      tipo 
    in         a                    B;
    in         b                    B;
    in         s                    B;

    out        x                    B;
    in         vdd                  B;
    in         vss                  B;
  
--ESTIMULOS
--<tiempo>:   a     b       s       x       vdd     vss         
begin
<0ns>:        0     0       0       ?*      1       0;
<+50ns>:      1     0       0       ?*      1       0;
<+50ns>:      0     1       0       ?*      1       0;
<+50ns>:      1     1       0       ?*      1       0;
<+50ns>:      0     0       0       ?*      1       0;
<+50ns>:      1     0       0       ?*      1       0;
<+50ns>:      0     1       0       ?*      1       0;
<+50ns>:      1     1       0       ?*      1       0;

<+50ns>:      0     0       1       ?*      1       0;
<+50ns>:      1     0       1       ?*      1       0;
<+50ns>:      0     1       1       ?*      1       0;
<+50ns>:      1     1       1       ?*      1       0;
<+50ns>:      0     0       1       ?*      1       0;
<+50ns>:      1     0       1       ?*      1       0;
<+50ns>:      0     1       1       ?*      1       0;
<+50ns>:      1     1       1       ?*      1       0;
end;
