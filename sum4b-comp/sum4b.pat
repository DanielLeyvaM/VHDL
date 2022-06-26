--PUERTOS
--entradas
in  a   (3 downto 0)    X;
in  b   (3 downto 0)    X;
in  ci                  B;
--salidas
out  so  (3 downto 0)   X;
out  co                 B;
--alimentacion
in  vdd                 B;
in  vss                 B;

--ESTIMULOS
--<tiempo>: a   b   ci  so  co  vdd vss;
begin
<0ns> :     0   0   0   ?*   ?* 1   0;

<+50ns> :   0   0   1   ?*   ?* 1   0;
<+50ns> :   0   4   1   ?*   ?* 1   0;
<+50ns> :   0   8   1   ?*   ?* 1   0;

<+50ns> :   4   0   0   ?*   ?* 1   0;
<+50ns> :   4   4   1   ?*   ?* 1   0;
<+50ns> :   4   8   1   ?*   ?* 1   0;

<+50ns> :   8   0   0   ?*   ?* 1   0;
<+50ns> :   8   4   1   ?*   ?* 1   0;
<+50ns> :   8   8   1   ?*   ?* 1   0;


end;

