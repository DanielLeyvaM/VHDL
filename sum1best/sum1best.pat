--PUERTOS
--sentido   nombre  tamaño  tipo   
--entrada
    in         a              B;
    in         b              B;
    in         ci             B;
--salida
    out        so             B;
    out        co             B;
    
--alimentacion
    in         vdd            B; 
    in         vss            B;
        
--ESTIMULOS
--<tiempo>: a   b   cin  sum    cout    vdd     vss
begin 
<0ns>:      0   0    0    ?*    ?*      1       0;
<+50ns>:    0   0    1    ?*    ?*      1       0;
<+50ns>:    0   1    0    ?*    ?*      1       0;
<+50ns>:    0   1    1    ?*    ?*      1       0;
<+50ns>:    1   0    0    ?*    ?*      1       0;
<+50ns>:    1   0    1    ?*    ?*      1       0;
<+50ns>:    1   1    0    ?*    ?*      1       0;
<+50ns>:    1   1    1    ?*    ?*      1       0;
end;

    
