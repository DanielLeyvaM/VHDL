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
entity mul3b is
port(
    X,Y:    in      std_logic_vector(2 downto 0); 
    Z  :    out     std_logic_vector(5 downto 0)
);

end mul3b;

--ARQUITECTURA
architecture arq of mul3b is
--declaraciones
 signal r0,r1,r2: std_logic_vector(5 downto 0);
--~ component mul1b 
--~ port(
    --~ X,Y,Ci,Si:    in      std_logic; 
    --~ co,so    :    out     std_logic
--~ );

--~ end component;

--signal cx,sx    :   std_logic_vector(8 downto 0);
--no requiere señal espuria
--asignaciones

--JERARQUICO
--~ begin
                --~ -- x     y    ci    si    co  so
--~ u0: mul1b port map(x(0),y(0),'0',  '0', cx(0),sx(0));
--~ u1: mul1b port map(x(1),y(0),cx(0),'0', cx(1),sx(1));
--~ u2: mul1b port map(x(2),y(0),cx(1),'0', cx(2),sx(2));
--~ u3: mul1b port map(x(0),y(1),'0', sx(1),cx(3),sx(3));
--~ u4: mul1b port map(x(1),y(1),cx(3),sx(2),cx(4),sx(4));
--~ u5: mul1b port map(x(2),y(1),cx(4),cx(2),cx(5),sx(5));
--~ u6: mul1b port map(x(0),y(2),'0', sx(4),cx(6),sx(6));
--~ u7: mul1b port map(x(1),y(2),cx(6),sx(5),cx(7),sx(7));
--~ u8: mul1b port map(x(2),y(2),cx(7),cx(5),cx(8),sx(8));

--~ z(0) <= sx(0);
--~ z(1) <= sx(3);
--~ z(4 downto 2) <= sx(8 downto 6);
--~ z(5) <= cx(8);

begin
--Comportamental- Combinacional When, Else
      --~ r0 <= "000"&x    when y(0)='1' else "000000";
      --~ r1 <= "00"&x&'0' when y(1)='1' else "000000";
      --~ r2 <= '0'&x&"00" when y(2)='1' else "000000";
      --~ z  <= r0+r1+r2;

--Comportamental- Combinacional With,Select
      --~ with y(0) select r0 <= "000"&x when '1',
                             --~ "000000" when others;
      --~ with y(1) select r1 <= "00"&x&'0' when '1',
                             --~ "000000" when others;
      --~ with y(2) select r2 <= '0'&x&"00" when '1',
                             --~ "00000" when others;
      --~ z <= r0+r1+r2;

--Comportamental - Secuencial if,else
      --~ multiplicacion: process(y)
      --~ begin
      --~ --If para renglon 0
          --~ if (y(0)='1') then 
              --~ r0 <= "000"&x;
          --~ else
              --~ r0 <= "000000";
          --~ end if;
    
      --~ --If para renglon 1
          --~ if (y(1)='1') then 
              --~ r1 <= "00"&x&'0';
          --~ else
              --~ r1 <= "000000";
          --~ end if;
    
      --~ --If para renglon 2
          --~ if (y(2)='1') then 
              --~ r2 <= '0'&x&"00";
          --~ else
              --~ r2 <= "000000";
          --~ end if;
    
      --~ end process;

          --~ z <= r0+r1+r2; 
-- se declara fuera del process para no gastar mas memoria
--dentro del process se le asignaría un registro o flip flop extra


--Comportamental- Secuencial Case, When
    multiplicacion: process (y)
    begin
    --Case para renglón 1
        case(y(0)) is
            when '1' =>
                r0 <= "000"&x;
            when others =>
                r0 <= "000000";
        end case;
    
    --Case para renglón 2
        case(y(1)) is
            when '1' =>
                r1 <= "00"&x&'0';
            when others =>
                r1 <= "000000";
        end case;

    --Case para renglón 3
        case(y(2)) is
            when '1' =>
                r2 <= '0'&x&"00";
            when others =>
                r2 <= "000000";
        end case;
    
    end process;
        z <= r0+r1+r2;


--Comportamental- Secuencial- Case, When- con 1 solo case
 --~ multiplicacion: process(y)
 --~ begin
     --~ case (y) is
         --~ when "000" =>
             --~ r0 <= "000000";
             --~ r1 <= "000000";
             --~ r2 <= "000000";
         --~ when "001" =>
             --~ r0 <= "000"&x;
             --~ r1 <= "00000";
             --~ r2 <= "00000";
         --~ when "010" =>
             --~ r0 <= "000000";
             --~ r1 <= "00"&x&'0';
             --~ r2 <= "000000";
         --~ when "011" =>
             --~ r0 <= "000"&x;
             --~ r1 <= "00"&x&'0';
             --~ r2 <= "000000";
         --~ when "100" =>
             --~ r0 <= "000000";
             --~ r1 <= "000000";
             --~ r2 <= '0'&x&"00";
         --~ when "101" =>
             --~ r0 <= "000"&x;
             --~ r1 <= "000000";
             --~ r2 <= '0'&x&"00";
         --~ when "110" =>
             --~ r0 <= "000000";
             --~ r1 <= "00"&x&'0';
             --~ r2 <= '0'&x&"00";
         --~ when others =>
             --~ r0 <= "000"&x;
             --~ r1 <= "00"&x&'0';
             --~ r2 <= '0'&x&"00";
     --~ end case;
 --~ end process;
 --~ z <= r0+r1+r2;

end arq;


