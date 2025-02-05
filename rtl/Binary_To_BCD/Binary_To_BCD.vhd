library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_to_BCD is
   port (
      binary_in : in STD_LOGIC_VECTOR(7 downto 0);  -- Entrada binária (0 a 255)
      bcd_out   : out STD_LOGIC_VECTOR(11 downto 0) -- Saída BCD (3 dígitos decimais)
   );
end Binary_to_BCD;

architecture Behavioral of Binary_to_BCD is
begin
   process(binary_in)
      variable temp : STD_LOGIC_VECTOR(19 downto 0);  -- Variável temporária para o algoritmo
   begin
      temp := (others => '0');  -- Inicializa a variável temporária
      temp(7 downto 0) := binary_in;  -- Carrega o valor binário na variável temporária

      -- Algoritmo Double Dabble para conversão de binário para BCD
      for i in 0 to 7 loop
         -- Verifica se cada dígito BCD é maior que 4
         if temp(11 downto 8) > 4 then
            temp(11 downto 8) := temp(11 downto 8) + 3;
         end if;
         if temp(15 downto 12) > 4 then
            temp(15 downto 12) := temp(15 downto 12) + 3;
         end if;
         if temp(19 downto 16) > 4 then
            temp(19 downto 16) := temp(19 downto 16) + 3;
         end if;

         -- Desloca para a esquerda
         temp := temp(18 downto 0) & '0';
      end loop;

      -- Saída BCD (3 dígitos decimais)
      bcd_out <= temp(19 downto 8);
   end process;
end Behavioral;