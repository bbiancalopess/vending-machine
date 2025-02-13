library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Subtrator_TB is
end Subtrator_TB;

architecture Behavioral of Subtrator_TB is
   signal total_inserido : STD_LOGIC_VECTOR(7 downto 0);
   signal preco_produto : STD_LOGIC_VECTOR(7 downto 0);
   signal troco : STD_LOGIC_VECTOR(7 downto 0);
begin
   -- Instanciação do componente Subtrator
   UUT: entity work.Subtrator
      port map (
         total_inserido => total_inserido,
         preco_produto => preco_produto,
         troco => troco
      );

   -- Processo de teste
   process
   begin
      -- Teste 1: 15 - 10 = 5
      total_inserido <= "00001111";  -- 15
      preco_produto <= "00001010";  -- 10
      wait for 10 ns;
      assert troco = "00000101" report "Erro no Teste 1" severity error;

      -- Teste 2: 20 - 16 = 4
      total_inserido <= "00010100";  -- 20
      preco_produto <= "00010000";  -- 16
      wait for 10 ns;
      assert troco = "00000100" report "Erro no Teste 2" severity error;

      -- Finaliza o teste
      wait;
    end process;
end Behavioral;