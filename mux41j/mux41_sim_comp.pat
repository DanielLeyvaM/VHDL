
-- description generated by Pat driver

--			date     : Mon Sep 28 19:32:10 2020
--			revision : v109

--			sequence : mux41

-- input / output list :
in       a B;
in       b B;
in       c B;
in       d B;
in       s (1 downto 0) X;
out      x B;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 abcds xvv 
--                                                        ds 
--                                                        ds 

<          0 ps>                                 : 00000?010;
<      50000 ps>                                 : 00000?010;
<     100000 ps>                                 : 10000?110;
<     150000 ps>                                 : 01000?010;
<     200000 ps>                                 : 11000?110;
<     250000 ps>                                 : 00100?010;
<     300000 ps>                                 : 10100?110;
<     350000 ps>                                 : 01100?010;
<     400000 ps>                                 : 11100?110;
<     450000 ps>                                 : 00010?010;
<     500000 ps>                                 : 10010?110;
<     550000 ps>                                 : 01010?010;
<     600000 ps>                                 : 11010?110;
<     650000 ps>                                 : 00110?010;
<     700000 ps>                                 : 10110?110;
<     750000 ps>                                 : 01110?010;
<     800000 ps>                                 : 11110?110;
<     850000 ps>                                 : 00001?010;
<     900000 ps>                                 : 10001?010;
<     950000 ps>                                 : 01001?110;
<    1000000 ps>                                 : 11001?110;
<    1050000 ps>                                 : 00101?010;
<    1100000 ps>                                 : 10101?010;
<    1150000 ps>                                 : 01101?110;
<    1200000 ps>                                 : 11101?110;
<    1250000 ps>                                 : 00011?010;
<    1300000 ps>                                 : 10011?010;
<    1350000 ps>                                 : 01011?110;
<    1400000 ps>                                 : 11011?110;
<    1450000 ps>                                 : 00111?010;
<    1500000 ps>                                 : 10111?010;
<    1550000 ps>                                 : 01111?110;
<    1600000 ps>                                 : 11111?110;
<    1650000 ps>                                 : 00002?010;
<    1700000 ps>                                 : 10002?010;
<    1750000 ps>                                 : 01002?010;
<    1800000 ps>                                 : 11002?010;
<    1850000 ps>                                 : 00102?110;
<    1900000 ps>                                 : 10102?110;
<    1950000 ps>                                 : 01102?110;
<    2000000 ps>                                 : 11102?110;
<    2050000 ps>                                 : 00012?010;
<    2100000 ps>                                 : 10012?010;
<    2150000 ps>                                 : 01012?010;
<    2200000 ps>                                 : 11012?010;
<    2250000 ps>                                 : 00112?110;
<    2300000 ps>                                 : 10112?110;
<    2350000 ps>                                 : 01112?110;
<    2400000 ps>                                 : 11112?110;
<    2450000 ps>                                 : 00003?010;
<    2500000 ps>                                 : 10003?010;
<    2550000 ps>                                 : 01003?010;
<    2600000 ps>                                 : 11003?010;
<    2650000 ps>                                 : 00103?010;
<    2700000 ps>                                 : 10103?010;
<    2750000 ps>                                 : 01103?010;
<    2800000 ps>                                 : 11103?010;
<    2850000 ps>                                 : 00013?110;
<    2900000 ps>                                 : 10013?110;
<    2950000 ps>                                 : 01013?110;
<    3000000 ps>                                 : 11013?110;
<    3050000 ps>                                 : 00113?110;
<    3100000 ps>                                 : 10113?110;
<    3150000 ps>                                 : 01113?110;
<    3200000 ps>                                 : 11113?110;

end;
