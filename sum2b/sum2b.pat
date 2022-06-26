--PUERTOS
--entradas
in  a   (1 downto 0)    X;
in  b   (1 downto 0)    X;
in  ci                  B;
--salidas
out  so   (1 downto 0)   X;
out  co                  B;
--alimentacion
in  vdd                 B;
in  vss                 B;

--ESTIMULOS
--<tiempo>: a   b   ci  so  co  vdd vss;
begin
<0ns> :     0   0   0   ?*   ?* 1   0;
<+50ns> :   0   0   1   ?*   ?* 1   0;
<+50ns> :   0   1   1   ?*   ?* 1   0;
<+50ns> :   0   2   1   ?*   ?* 1   0;
<+50ns> :   1   0   0   ?*   ?* 1   0;
<+50ns> :   1   0   1   ?*   ?* 1   0;
<+50ns> :   1   1   1   ?*   ?* 1   0;
<+50ns> :   1   2   1   ?*   ?* 1   0;
<+50ns> :   2   0   0   ?*   ?* 1   0;
<+50ns> :   2   0   1   ?*   ?* 1   0;
<+50ns> :   2   1   1   ?*   ?* 1   0;
<+50ns> :   2   2   1   ?*   ?* 1   0;
end;

