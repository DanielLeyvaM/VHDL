--PUERTOS
in x    (1 downto 0)        X;
in y    (1 downto 0)        X;
out z   (3 downto 0)        X;

in vdd                      B;
in vss                      B;

--ESTIMULOS
--<tiempo>: x   y   z   vdd vss
begin 
<0ns>:      0   0   ?*  1   0;
<+50ns>:    3   0   ?*  1   0;
<+50ns>:    0   3   ?*  1   0;
<+50ns>:    3   3   ?*  1   0;
end;
