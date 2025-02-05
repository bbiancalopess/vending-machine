library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador_Produto_TB is
end Decodificador_Produto_TB;

architecture Behavioral of Decodificador_Produto_TB is
   signal product_selection : STD_LOGIC_VECTOR(3 downto 0);
   signal preco_produto : STD_LOGIC_VECTOR(7 downto 0);
begin
   -- Instanciação do componente Decodificador_Produto
   UUT: entity work.Decodificador_Produto
      port map (
         product_selection => product_selection,
         preco_produto => preco_produto
      );

   -- Processo de teste
   process
   begin
      -- Teste 1: Produto 1 (R$10)
      product_selection <= "0001";
      wait for 10 ns;
      assert preco_produto = "00001010" report "Erro no Teste 1" severity error;

      -- Teste 2: Produto 2 (R$67)
      product_selection <= "0010";
      wait for 10 ns;
      assert preco_produto = "01000011" report "Erro no Teste 2" severity error;
		
		-- Teste 3: Produto 3 (R$203)
      product_selection <= "0011";
      wait for 10 ns;
      assert preco_produto = "11001011" report "Erro no Teste 3" severity error;
		
		-- Teste 4: Produto 4 (R$167)
      product_selection <= "0100";
      wait for 10 ns;
      assert preco_produto = "10100111" report "Erro no Teste 4" severity error;
		
		-- Teste 5: Produto 5 (R$253)
      product_selection <= "0101";
      wait for 10 ns;
      assert preco_produto = "11111101" report "Erro no Teste 5" severity error;
		
		-- Teste 6: Produto 6 (R$139)
      product_selection <= "0110";
      wait for 10 ns;
      assert preco_produto = "10001011" report "Erro no Teste 6" severity error;
		
		-- Teste 7: Produto 7 (R$198)
      product_selection <= "0111";
      wait for 10 ns;
      assert preco_produto = "11000110" report "Erro no Teste 7" severity error;
		
		-- Teste 8: Produto 8 (R$124)
      product_selection <= "1000";
      wait for 10 ns;
      assert preco_produto = "01111100" report "Erro no Teste 8" severity error;
		
		-- Teste 9: Produto 9 (R$136)
      product_selection <= "1001";
      wait for 10 ns;
      assert preco_produto = "10001000" report "Erro no Teste 9" severity error;
		
		-- Teste 10: Produto 10 (R$53)
      product_selection <= "1010";
      wait for 10 ns;
      assert preco_produto = "00110101" report "Erro no Teste 10" severity error;
		
		-- Teste 11: Produto 11 (R$74)
      product_selection <= "1011";
      wait for 10 ns;
      assert preco_produto = "01001010" report "Erro no Teste 11" severity error;
		
		-- Teste 12: Produto 12 (R$119)
      product_selection <= "1100";
      wait for 10 ns;
      assert preco_produto = "01110111" report "Erro no Teste 12" severity error;
		
		-- Teste 13: Produto 13 (R$103)
      product_selection <= "1101";
      wait for 10 ns;
      assert preco_produto = "01100111" report "Erro no Teste 13" severity error;
		
		-- Teste 14: Produto 14 (R$105)
      product_selection <= "1110";
      wait for 10 ns;
      assert preco_produto = "01101001" report "Erro no Teste 14" severity error;
		
		-- Teste 15: Produto 15 (R$38)
      product_selection <= "1111";
      wait for 10 ns;
      assert preco_produto = "00100110" report "Erro no Teste 15" severity error;
		
		-- Teste 16: Produto inválido
      product_selection <= "0000";
      wait for 10 ns;
      assert preco_produto = "00000000" report "Erro no Teste 16" severity error;

      -- Finaliza o teste
      wait;
   end process;
end Behavioral;