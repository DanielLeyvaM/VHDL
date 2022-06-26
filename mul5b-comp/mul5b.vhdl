--CABECERAS
library ieee;
use     ieee.std_logic_1164.all;
--Comportamental
use     ieee.std_logic_arith.all;
use     ieee.std_logic_unsigned.all;
--unsigned (sin bit significativo de signo)
--con unsigned 1001 = 9
--sin unsigned 1001 = -1

--ENTIDAD
entity mul5b is
port(
    X,Y:    in      std_logic_vector(4 downto 0); 
    Z  :    out     std_logic_vector(9 downto 0)
);

end mul5b;

--ARQUITECTURA
architecture arq of mul5b is
--declaraciones
signal r0,r1,r2,r3,r4: std_logic_vector(9 downto 0);
--~ component mul1b 
--~ port(
    --~ X,Y,Ci,Si:    in      std_logic; 
    --~ co,so    :    out     std_logic
--~ );

--~ end component;
--~ signal cx,sx    :   std_logic_vector(24 downto 0);
--no requiere señal espuria
--asignaciones

--JERARQUICO
--~ begin
                --~ -- x     y    ci    si    co  so
--~ u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));
--~ u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));
--~ u2: mul1b port map(x(2),y(0),cx(1),'0', cx(2),sx(2));
--~ u3: mul1b port map(x(3),y(0),cx(2),'0', cx(3),sx(3));
--~ u4: mul1b port map(x(4),y(0),cx(3),'0', cx(4),sx(4));
--~ u5: mul1b port map(x(0),y(1), '0', sx(1),cx(5),sx(5));
--~ u6: mul1b port map(x(1),y(1),cx(5),sx(2),cx(6),sx(6));
--~ u7: mul1b port map(x(2),y(1),cx(6),sx(3),cx(7),sx(7));
--~ u8: mul1b port map(x(3),y(1),cx(7),sx(4),cx(8),sx(8));
--~ u9: mul1b port map(x(4),y(1),cx(8),cx(4),cx(9),sx(9));
--~ u10: mul1b port map(x(0),y(2), '0', sx(6),cx(10),sx(10));
--~ u11: mul1b port map(x(1),y(2),cx(10),sx(7),cx(11),sx(11));
--~ u12: mul1b port map(x(2),y(2),cx(11),sx(8),cx(12),sx(12));
--~ u13: mul1b port map(x(3),y(2),cx(12),sx(9),cx(13),sx(13));
--~ u14: mul1b port map(x(4),y(2),cx(13),cx(9),cx(14),sx(14));
--~ u15: mul1b port map(x(0),y(3), '0', sx(11),cx(15),sx(15));
--~ u16: mul1b port map(x(1),y(3),cx(15),sx(12),cx(16),sx(16));
--~ u17: mul1b port map(x(2),y(3),cx(16),sx(13),cx(17),sx(17));
--~ u18: mul1b port map(x(3),y(3),cx(17),sx(14),cx(18),sx(18));
--~ u19: mul1b port map(x(4),y(3),cx(18),cx(14),cx(19),sx(19));
--~ u20: mul1b port map(x(0),y(4), '0',  sx(16),cx(20),sx(20));
--~ u21: mul1b port map(x(1),y(4),cx(20),sx(17),cx(21),sx(21));
--~ u22: mul1b port map(x(2),y(4),cx(21),sx(18),cx(22),sx(22));
--~ u23: mul1b port map(x(3),y(4),cx(22),sx(19),cx(23),sx(23));
--~ u24: mul1b port map(x(4),y(4),cx(23),cx(19),cx(24),sx(24));

--~ z(0) <= sx(0);
--~ z(1) <= sx(5);
--~ z(2) <= sx(10);
--~ z(3) <= sx(15);
--~ z(8 downto 4) <= sx(24 downto 20);
--~ z(9) <= cx(24);

--COMPORTAMENTAL
begin
--~ --Comportamental- Combinacional When, Else
      --~ r0 <= "00000"&x    when y(0)='1' else "0000000000";
      --~ r1 <= "0000"&x&'0' when y(1)='1' else "0000000000";
      --~ r2 <= "000"&x&"00" when y(2)='1' else "0000000000";
      --~ r3 <= "00"&x&"000" when y(3)='1' else "0000000000";
      --~ r4 <= '0'&x&"0000" when y(4)='1' else "0000000000";
      --~ z  <= r0+r1+r2+r3+r4;

--Comportamental- Combinacional With,Select
      --~ with y(0) select r0 <= "00000"&x when '1',
                             --~ "0000000000" when others;
      --~ with y(1) select r1 <= "0000"&x&'0' when '1',
                             --~ "0000000000" when others;
      --~ with y(2) select r2 <= "000"&x&"00" when '1',
                             --~ "0000000000" when others;
      --~ with y(3) select r3 <= "00"&x&"000" when '1',
                             --~ "0000000000" when others;
      --~ with y(4) select r4 <= '0'&x&"0000" when '1',
                             --~ "0000000000" when others;
      --~ z <= r0+r1+r2+r3+r4;

--Comportamental - Secuencial if,else
       --~ multiplicacion: process(y)
       --~ begin
       --~ --If para renglon 0
           --~ if (y(0)='1') then 
               --~ r0 <= "00000"&x;
           --~ else
               --~ r0 <= "0000000000";
           --~ end if;
    
       --~ --If para renglon 1
           --~ if (y(1)='1') then 
               --~ r1 <= "0000"&x&'0';
           --~ else
               --~ r1 <= "0000000000";
           --~ end if;
    
       --~ --If para renglon 2
           --~ if (y(2)='1') then 
               --~ r2 <= "000"&x&"00";
           --~ else
               --~ r2 <= "0000000000";
           --~ end if;
        
       --~ --If para renglon 3
           --~ if (y(3)='1') then 
               --~ r3 <= "00"&x&"000";
           --~ else
               --~ r3 <= "0000000000";
           --~ end if;
         
       --~ --If para renglon 4
           --~ if (y(4)='1') then 
               --~ r4 <= '0'&x&"0000";
           --~ else
               --~ r4 <= "0000000000";
           --~ end if;
    
       --~ end process;

           --~ z <= r0+r1+r2+r3+r4; 
-- se declara fuera del process para no gastar mas memoria
--dentro del process se le asignaría un registro o flip flop extra


--Comportamental- Secuencial Case, When
     multiplicacion: process (y)
     begin
     --Case para renglón 1
         case(y(0)) is
             when '1' =>
                 r0 <= "00000"&x;
             when others =>
                 r0 <= "0000000000";
         end case;
    
     --Case para renglón 2
         case(y(1)) is
             when '1' =>
                 r1 <= "0000"&x&'0';
             when others =>
                 r1 <= "0000000000";
         end case;

     --Case para renglón 3
         case(y(2)) is
             when '1' =>
                 r2 <= "000"&x&"00";
             when others =>
                 r2 <= "0000000000";
         end case;
      
     --Case para renglón 4
         case(y(3)) is
             when '1' =>
                 r3 <= "00"&x&"000";
             when others =>
                 r3 <= "0000000000";
         end case;
       
     --Case para renglón 5
         case(y(4)) is
             when '1' =>
                 r4 <= '0'&x&"0000";
             when others =>
                 r4 <= "0000000000";
         end case;
    
     end process;
         z <= r0+r1+r2+r3+r4;


--Comportamental- Secuencial- Case, When- con 1 solo case
   --~ multiplicacion: process(y)
   --~ begin
       --~ case (y) is
           --~ when "00000" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000000000";
               --~ r2 <= "0000000000";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "00001" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "000000000";
               --~ r2 <= "000000000";
               --~ r3 <= "000000000";
               --~ r4 <= "000000000";
           --~ when "00010" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "00011" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "00100" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "00101" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "00110" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "00111" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= "0000000000";
           --~ when "01000" =>
               --~ r0 <= "00000000";
               --~ r1 <= "00000000";
               --~ r2 <= "00000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01001" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "000000000";
               --~ r2 <= "000000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01010" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01011" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01100" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01101" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01110" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
           --~ when "01111" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= "0000000000";
               
               
           --~ when "10000" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000000000";
               --~ r2 <= "0000000000";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10001" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "000000000";
               --~ r2 <= "000000000";
               --~ r3 <= "000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10010" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10011" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10100" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10101" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10110" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "10111" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "0000000000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11000" =>
               --~ r0 <= "00000000";
               --~ r1 <= "00000000";
               --~ r2 <= "00000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11001" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "000000000";
               --~ r2 <= "000000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11010" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11011" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "0000000000";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11100" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11101" =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000000000";
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when "11110" =>
               --~ r0 <= "0000000000";
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
           --~ when others =>
               --~ r0 <= "00000"&x;
               --~ r1 <= "0000"&x&'0';
               --~ r2 <= "000"&x&"00";
               --~ r3 <= "00"&x&"000";
               --~ r4 <= '0'&x&"0000";
       --~ end case;
   --~ end process;
   --~ z <= r0+r1+r2+r3+r4;
end arq;


