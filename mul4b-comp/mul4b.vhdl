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
entity mul4b is
port(
    X,Y:    in      std_logic_vector(3 downto 0); 
    Z  :    out     std_logic_vector(7 downto 0)
);

end mul4b;

--ARQUITECTURA
architecture arq of mul4b is
--declaraciones
signal r0,r1,r2,r3: std_logic_vector(7 downto 0);
--~ component mul1b 
--~ port(
    --~ X,Y,Ci,Si:    in      std_logic; 
    --~ co,so    :    out     std_logic
--~ );

--~ end component;
--~ signal cx,sx    :   std_logic_vector(15 downto 0);
--no requiere señal espuria

--COMPORTAMENTAL
--asignaciones
--~ begin
                --~ -- x     y    ci    si    co  so
--~ u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));
--~ u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));
--~ u2: mul1b port map(x(2),y(0),cx(1),'0', cx(2),sx(2));
--~ u3: mul1b port map(x(3),y(0),cx(2),'0', cx(3),sx(3));
--~ u4: mul1b port map(x(0),y(1),'0',  sx(1),cx(4),sx(4));
--~ u5: mul1b port map(x(1),y(1),cx(4),sx(2),cx(5),sx(5));
--~ u6: mul1b port map(x(2),y(1),cx(5),sx(3),cx(6),sx(6));
--~ u7: mul1b port map(x(3),y(1),cx(6),cx(3),cx(7),sx(7));
--~ u8: mul1b port map(x(0),y(2), '0', sx(5),cx(8),sx(8));
--~ u9: mul1b port map(x(1),y(2),cx(8),sx(6),cx(9),sx(9));
--~ u10: mul1b port map(x(2),y(2),cx(9),sx(7),cx(10),sx(10));
--~ u11: mul1b port map(x(3),y(2),cx(10),cx(7),cx(11),sx(11));
--~ u12: mul1b port map(x(0),y(3), '0', sx(9),cx(12),sx(12));
--~ u13: mul1b port map(x(1),y(3),cx(12),sx(10),cx(13),sx(13));
--~ u14: mul1b port map(x(2),y(3),cx(13),sx(11),cx(14),sx(14));
--~ u15: mul1b port map(x(3),y(3),cx(14),cx(11),cx(15),sx(15));

--~ z(0) <= sx(0);
--~ z(1) <= sx(4);
--~ z(2) <= sx(8);
--~ z(6 downto 3) <= sx(15 downto 12);
--~ z(7) <= cx(15);

--JERARQUICA
begin
--~ --Comportamental- Combinacional When, Else
      --~ r0 <= "0000"&x    when y(0)='1' else "00000000";
      --~ r1 <= "000"&x&'0' when y(1)='1' else "00000000";
      --~ r2 <= "00"&x&"00" when y(2)='1' else "00000000";
      --~ r3 <= '0'&x&"000" when y(3)='1' else "00000000";
      --~ z  <= r0+r1+r2+r3;

--Comportamental- Combinacional With,Select
     --~ with y(0) select r0 <= "0000"&x when '1',
                            --~ "00000000" when others;
     --~ with y(1) select r1 <= "000"&x&'0' when '1',
                            --~ "00000000" when others;
     --~ with y(2) select r2 <= "00"&x&"00" when '1',
                            --~ "0000000" when others;
     --~ with y(3) select r3 <= '0'&x&"000" when '1',
                            --~ "0000000" when others;
     --~ z <= r0+r1+r2+r3;

--Comportamental - Secuencial if,else
       --~ multiplicacion: process(y)
       --~ begin
       --~ --If para renglon 0
           --~ if (y(0)='1') then 
               --~ r0 <= "0000"&x;
           --~ else
               --~ r0 <= "00000000";
           --~ end if;
    
       --~ --If para renglon 1
           --~ if (y(1)='1') then 
               --~ r1 <= "000"&x&'0';
           --~ else
               --~ r1 <= "00000000";
           --~ end if;
    
       --~ --If para renglon 2
           --~ if (y(2)='1') then 
               --~ r2 <= "00"&x&"00";
           --~ else
               --~ r2 <= "00000000";
           --~ end if;
        
       --~ --If para renglon 3
           --~ if (y(3)='1') then 
               --~ r3 <= '0'&x&"000";
           --~ else
               --~ r3 <= "00000000";
           --~ end if;
    
       --~ end process;

           --~ z <= r0+r1+r2+r3; 
-- se declara fuera del process para no gastar mas memoria
--dentro del process se le asignaría un registro o flip flop extra


--Comportamental- Secuencial Case, When
    multiplicacion: process (y)
    begin
    --Case para renglón 1
        case(y(0)) is
            when '1' =>
                r0 <= "0000"&x;
            when others =>
                r0 <= "00000000";
        end case;
    
    --Case para renglón 2
        case(y(1)) is
            when '1' =>
                r1 <= "000"&x&'0';
            when others =>
                r1 <= "00000000";
        end case;

    --Case para renglón 3
        case(y(2)) is
            when '1' =>
                r2 <= "00"&x&"00";
            when others =>
                r2 <= "00000000";
        end case;
      
    --Case para renglón 4
        case(y(3)) is
            when '1' =>
                r3 <= '0'&x&"000";
            when others =>
                r3 <= "00000000";
        end case;
    
    end process;
        z <= r0+r1+r2+r3;


--Comportamental- Secuencial- Case, When- con 1 solo case
  --~ multiplicacion: process(y)
  --~ begin
      --~ case (y) is
          --~ when "0000" =>
              --~ r0 <= "00000000";
              --~ r1 <= "00000000";
              --~ r2 <= "00000000";
              --~ r3 <= "00000000";
          --~ when "0001" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "0000000";
              --~ r2 <= "0000000";
              --~ r3 <= "0000000";
          --~ when "0010" =>
              --~ r0 <= "00000000";
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00000000";
              --~ r3 <= "00000000";
          --~ when "0011" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00000000";
              --~ r3 <= "00000000";
          --~ when "0100" =>
              --~ r0 <= "00000000";
              --~ r1 <= "00000000";
              --~ r2 <= "00"&x&"00";
              --~ r3 <= "00000000";
          --~ when "0101" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "00000000";
              --~ r2 <= "00"&x&"00";
              --~ r3 <= "00000000";
          --~ when "0110" =>
              --~ r0 <= "00000000";
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00"&x&"00";
              --~ r3 <= "00000000";
          --~ when "0111" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00"&x&"00";
              --~ r3 <= "00000000";
              
              
          --~ when "1000" =>
              --~ r0 <= "00000000";
              --~ r1 <= "00000000";
              --~ r2 <= "00000000";
              --~ r3 <= '0'&x&"000";
          --~ when "1001" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "0000000";
              --~ r2 <= "0000000";
              --~ r3 <= '0'&x&"000";
          --~ when "1010" =>
              --~ r0 <= "00000000";
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00000000";
              --~ r3 <= '0'&x&"000";
          --~ when "1011" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00000000";
              --~ r3 <= '0'&x&"000";
          --~ when "1100" =>
              --~ r0 <= "00000000";
              --~ r1 <= "00000000";
              --~ r2 <= "00"&x&"00";
              --~ r3 <= '0'&x&"000";
          --~ when "1101" =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "00000000";
              --~ r2 <= "00"&x&"00";
              --~ r3 <= '0'&x&"000";
          --~ when "1110" =>
              --~ r0 <= "00000000";
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00"&x&"00";
              --~ r3 <= '0'&x&"000";
          --~ when others =>
              --~ r0 <= "0000"&x;
              --~ r1 <= "000"&x&'0';
              --~ r2 <= "00"&x&"00";
              --~ r3 <= '0'&x&"000";
      --~ end case;
  --~ end process;
  --~ z <= r0+r1+r2+r3;
end arq;


