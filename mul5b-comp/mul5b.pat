--PUERTOS
in x    (4 downto 0)        X;
in y    (4 downto 0)        X;
out z   (9 downto 0)        X;

in vdd                      B;
in vss                      B;

--ESTIMULOS
--<tiempo>: x   y   z   vdd vss
begin 
<0ns>:      00  00   ?***  1   0;

<+50ns>:    03  00   ?***  1   0;
<+50ns>:    03  03   ?***  1   0;

<+50ns>:    07  00   ?***  1   0;
<+50ns>:    07  07   ?***  1   0;

<+50ns>:    0F  00   ?***  1   0;
<+50ns>:    0F  0F   ?***  1   0;

<+50ns>:    1F  00   ?***  1   0;
<+50ns>:    1F  1F   ?***  1   0;

end;
