
-- description generated by Pat driver

--			date     : Mon Oct 19 11:24:36 2020
--			revision : v109

--			sequence : mux21

-- input / output list :
in       a B;
in       b B;
in       s B;
out      x B;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 abs xvv 
--                                                      ds 
--                                                      ds 

<          0 ps>                                 : 000?010;
<      50000 ps>                                 : 100?110;
<     100000 ps>                                 : 010?010;
<     150000 ps>                                 : 110?110;
<     200000 ps>                                 : 000?010;
<     250000 ps>                                 : 100?110;
<     300000 ps>                                 : 010?010;
<     350000 ps>                                 : 110?110;
<     400000 ps>                                 : 001?010;
<     450000 ps>                                 : 101?010;
<     500000 ps>                                 : 011?110;
<     550000 ps>                                 : 111?110;
<     600000 ps>                                 : 001?010;
<     650000 ps>                                 : 101?010;
<     700000 ps>                                 : 011?110;
<     750000 ps>                                 : 111?110;

end;