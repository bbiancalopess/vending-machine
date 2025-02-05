library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador_Maior is
   Port (
      total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
      preco_produto : in STD_LOGIC_VECTOR(7 downto 0);
      sinal_maior : out STD_LOGIC
   );
end Comparador_Maior;

architecture Behavioral of Comparador_Maior is
begin
   sinal_maior <= '1' when total_inserido > preco_produto else '0';
end Behavioral;