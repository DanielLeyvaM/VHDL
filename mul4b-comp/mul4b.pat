--PUERTOS
in x    (3 downto 0)        X;
in y    (3 downto 0)        X;
out z   (7 downto 0)        X;

in vdd                      B;
in vss                      B;

--ESTIMULOS
--<tiempo>: x   y   z   vdd vss
begin 
<0ns>:      0   0   ?**  1   0;

<+50ns>:    3  0   ?**  1   0;
<+50ns>:    3  3   ?**  1   0;

<+50ns>:    7  0   ?**  1   0;
<+50ns>:    7  7   ?**  1   0;

<+50ns>:    8  0   ?**  1   0;
<+50ns>:    8  8   ?**  1   0;

<+50ns>:    F  0   ?**  1   0;
<+50ns>:    F  F   ?**  1   0;
end;
