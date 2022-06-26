--PUERTOS
in x    (2 downto 0)        X;
in y    (2 downto 0)        X;
out z   (5 downto 0)        X;

in vdd                      B;
in vss                      B;

--ESTIMULOS
--<tiempo>: x   y   z   vdd vss
begin 
<0ns>:      0   0   ?**  1   0;

<+50ns>:    3   0   ?**  1   0;
<+50ns>:    3   3   ?**  1   0;

<+50ns>:    5   0   ?**  1   0;
<+50ns>:    5   5   ?**  1   0;

<+50ns>:    7   0   ?**  1   0;
<+50ns>:    7   7   ?**  1   0;

end;
