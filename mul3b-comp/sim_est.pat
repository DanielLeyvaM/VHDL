
-- description generated by Pat driver

--			date     : Wed Oct 28 14:33:23 2020
--			revision : v109

--			sequence : mul3b

-- input / output list :
in       x (2 downto 0) X;
in       y (2 downto 0) X;
out      z (5 downto 0) X;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 xy z vv 
--                                                      ds 
--                                                      ds 

<          0 ps>                                 : 00?uu10;
<      50000 ps>                                 : 30?0010;
<     100000 ps>                                 : 33?0010;
<     150000 ps>                                 : 50?0910;
<     200000 ps>                                 : 55?0010;
<     250000 ps>                                 : 70?1910;
<     300000 ps>                                 : 77?0010;

end;
