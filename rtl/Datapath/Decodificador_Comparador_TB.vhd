library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decodificador_Comparador_TB is
end Decodificador_Comparador_TB;

architecture Behavioral of Decodificador_Comparador_TB is
   signal product_selection: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal saldo_atual      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal preco_produto    : STD_LOGIC_VECTOR(7 downto 0);
   signal sinal_maior_igual: STD_LOGIC;

   component Decodificador_Produto
      port (
         product_selection : in STD_LOGIC_VECTOR(3 downto 0);
         preco_produto     : out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;

   component Comparador_Maior_Igual
      port (
         total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
         preco_produto  : in STD_LOGIC_VECTOR(7 downto 0);
         sinal_maior_igual : out STD_LOGIC
      );
   end component;

begin
   -- Instância do Decodificador_Produto
   U1: Decodificador_Produto
      port map (
         product_selection => product_selection,
         preco_produto     => preco_produto
      );

   -- Instância do Comparador_Maior_Igual
   U2: Comparador_Maior_Igual
      port map (
         total_inserido => saldo_atual,
         preco_produto  => preco_produto,
         sinal_maior_igual => sinal_maior_igual
      );

   -- Processo de teste
   process
   begin
      -- Teste 1: Produto 1 (preço 10), saldo 15
      product_selection <= "0001";  -- Produto 1
      saldo_atual <= "00001111";    -- 15
      wait for 10 ns;
      assert sinal_maior_igual = '1'  -- Saldo suficiente
         report "Erro no Teste 1" severity error;

      -- Teste 2: Produto 2 (preço 67), saldo 15
      product_selection <= "0010";  -- Produto 2
      saldo_atual <= "00001111";    -- 15
      wait for 10 ns;
      assert sinal_maior_igual = '0'  -- Saldo insuficiente
         report "Erro no Teste 2" severity error;
			
		-- Teste 3: Produto 3 (preço 203), saldo 203
      product_selection <= "0011";  -- Produto 3
      saldo_atual <= "11001011";    -- 203
      wait for 10 ns;
      assert sinal_maior_igual = '1'  -- Saldo suficiente
         report "Erro no Teste 3" severity error;

      -- Finalização do teste
      report "Teste do Decodificador e Comparador concluído!" severity note;
      wait;
   end process;
end Behavioral;