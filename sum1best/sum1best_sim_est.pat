
-- description generated by Pat driver

--			date     : Fri Oct  9 19:04:38 2020
--			revision : v109

--			sequence : sum1best

-- input / output list :
in       a B;
in       b B;
in       ci B;
out      so B;
out      co B;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 abc s cvv 
--                                                   i o ods 
--                                                        ds 

<          0 ps>                                 : 000?u?u10;
<      50000 ps>                                 : 001?0?010;
<     100000 ps>                                 : 010?1?010;
<     150000 ps>                                 : 011?1?010;
<     200000 ps>                                 : 100?0?110;
<     250000 ps>                                 : 101?1?010;
<     300000 ps>                                 : 110?0?110;
<     350000 ps>                                 : 111?0?110;

end;
