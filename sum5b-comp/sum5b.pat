--PUERTOS
--entradas
in  a   (4 downto 0)    X;
in  b   (4 downto 0)    X;
in  ci                  B;
--salidas
out  so  (4 downto 0)   X;
out  co                 B;
--alimentacion
in  vdd                 B;
in  vss                 B;

--ESTIMULOS
--<tiempo>: a    b   ci   so  co  vdd vss;
begin
<0ns> :     00   00   0   ?**   ?* 1   0;

<+50ns> :   00   00   1   ?**   ?* 1   0;
<+50ns> :   00   08   1   ?**   ?* 1   0;
<+50ns> :   00   1F   1   ?**   ?* 1   0;

<+50ns> :   08   00   0   ?**   ?* 1   0;
<+50ns> :   08   08   1   ?**   ?* 1   0;
<+50ns> :   08   1F   1   ?**   ?* 1   0;

<+50ns> :   1F   00   0   ?**   ?* 1   0;
<+50ns> :   1F   08   1   ?**   ?* 1   0;
<+50ns> :   1F   1F   1   ?**   ?* 1   0;

end;

