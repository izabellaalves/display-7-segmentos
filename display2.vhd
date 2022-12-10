library IEEE;
use  ieee.numeric_std.all;

entity display2 is
Port (
        entradas: in bit_vector(3 downto 0);
        saidas: out bit_vector(6 downto 0)
 );
end display2;

architecture Behavioral of display2 is
begin

saidas <= "0000001" when entradas="0000" else
          "1001111" when entradas="0001" else
          "0010010" when entradas="0010" else
          "0000110" when entradas="0011" else
          "1001100" when entradas="0100" else
          "0100100" when entradas="0101" else
          "0100000" when entradas="0110" else
           "0001111" when entradas="0111" else
            "0000000" when entradas= "1000" else
            "0000100" when entradas="1001" else
             "0000010" when entradas= "1010" else
              "1100000" when entradas="1011" else
              "0110001" when entradas= "1100"else
               "1000010" when entradas="1101" else
                "0110000" when entradas= "1110" else
                 "0111000";
                 
end Behavioral;
