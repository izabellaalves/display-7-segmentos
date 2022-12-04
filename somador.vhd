library IEEE;
use  ieee.numeric_bit.all;

entity display2 is
Port (
        e1: in bit_vector(2 downto 0);
        e2: in bit_vector(2 downto 0);
        resultado: inout bit_vector(3 downto 0);
        saidas: out bit_vector(6 downto 0)
 );
end display2;

architecture Behavioral of display2 is

begin

resultado <= bit_vector(unsigned(e1) + unsigned(e2));

saidas <= "0000001" when resultado="0000" else
          "1001111" when resultado="0001" else
          "0010010" when resultado="0010" else
          "0000110" when resultado="0011" else
          "1001100" when resultado="0100" else
          "0100100" when resultado="0101" else
          "0100000" when resultado="0110" else
           "0001111" when resultado="0111" else
            "0000000" when resultado= "1000" else
            "0000100" when resultado="1001" else
             "0000010" when resultado= "1010" else
              "1100000" when resultado="1011" else
              "0110001" when resultado= "1100"else
               "1000010" when resultado="1101" else
                "0110000" when resultado= "1110" else
                 "0111000";
           
end Behavioral;