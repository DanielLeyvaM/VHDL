
-- description generated by Pat driver

--			date     : Fri Oct  9 20:33:16 2020
--			revision : v109

--			sequence : sum4b

-- input / output list :
in       a (3 downto 0) X;
in       b (3 downto 0) X;
in       ci B;
out      so (3 downto 0) X;
out      co B;
in       vdd B;
in       vss B;

begin

-- Pattern description :

--                                                 abc s cvv 
--                                                   i o ods 
--                                                        ds 

<          0 ps>                                 : 000?0?010;
<      50000 ps>                                 : 001?1?010;
<     100000 ps>                                 : 041?5?010;
<     150000 ps>                                 : 081?9?010;
<     200000 ps>                                 : 400?4?010;
<     250000 ps>                                 : 441?9?010;
<     300000 ps>                                 : 481?d?010;
<     350000 ps>                                 : 800?8?010;
<     400000 ps>                                 : 841?d?010;
<     450000 ps>                                 : 881?1?110;

end;
