library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador_Maior_TB is
end Comparador_Maior_TB;

architecture Behavioral of Comparador_Maior_TB is
   signal total_inserido : STD_LOGIC_VECTOR(7 downto 0);
   signal preco_produto : STD_LOGIC_VECTOR(7 downto 0);
   signal sinal_maior : STD_LOGIC;
begin
   -- Instanciação do componente Comparador_Maior
   UUT: entity work.Comparador_Maior
      port map (
         total_inserido => total_inserido,
         preco_produto => preco_produto,
         sinal_maior => sinal_maior
      );

   -- Processo de teste
   process
   begin
      -- Teste 1: 15 > 10 (deve ser 1)
      total_inserido <= "00001111";  -- 15
      preco_produto <= "00001010";  -- 10
      wait for 10 ns;
      assert sinal_maior = '1' report "Erro no Teste 1" severity error;

      -- Teste 2: 5 > 10 (deve ser 0)
      total_inserido <= "00000101";  -- 5
      preco_produto <= "00001010";  -- 10
      wait for 10 ns;
      assert sinal_maior = '0' report "Erro no Teste 2" severity error;

		-- Teste 3: 5 > 5 (deve ser 0)
      total_inserido <= "00000101";  -- 5
      preco_produto <= "00000101";  -- 5
      wait for 10 ns;
      assert sinal_maior = '0' report "Erro no Teste 3" severity error;
		
      -- Finaliza o teste
      wait;
   end process;
end Behavioral;