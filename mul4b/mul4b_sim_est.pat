
-- description generated by Pat driver

--			date     : Wed Nov  4 11:13:50 2020
--			revision : v109

--			sequence : mul4b

-- input / output list :
in       x (3 downto 0) X;
in       y (3 downto 0) X;
out      z (7 downto 0) X;
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
<     150000 ps>                                 : 70?0910;
<     200000 ps>                                 : 77?0010;
<     250000 ps>                                 : 80?3110;
<     300000 ps>                                 : 88?0010;
<     350000 ps>                                 : f0?4010;
<     400000 ps>                                 : ff?0010;

end;