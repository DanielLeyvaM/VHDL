
-- description generated by Pat driver

--			date     : Mon Oct 26 21:05:46 2020
--			revision : v109

--			sequence : sum5b

-- input / output list :
in       a (4 downto 0) X;
in       b (4 downto 0) X;
in       ci B;
out      so (4 downto 0) X;
out      co B;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 a b c s  cvv 
--                                                     i o  ods 
--                                                           ds 

<          0 ps>                                 : 00000?uu?u10;
<      50000 ps>                                 : 00001?00?010;
<     100000 ps>                                 : 00081?01?010;
<     150000 ps>                                 : 001f1?09?010;
<     200000 ps>                                 : 08000?00?110;
<     250000 ps>                                 : 08081?08?010;
<     300000 ps>                                 : 081f1?11?010;
<     350000 ps>                                 : 1f000?08?110;
<     400000 ps>                                 : 1f081?1f?010;
<     450000 ps>                                 : 1f1f1?08?110;

end;
