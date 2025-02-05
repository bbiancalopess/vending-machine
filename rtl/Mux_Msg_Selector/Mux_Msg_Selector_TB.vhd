library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_Msg_Selector_TB is
end Mux_Msg_Selector_TB;

architecture Behavioral of Mux_Msg_Selector_TB is
   -- Sinais de entrada
   signal estado_fsm       : STD_LOGIC_VECTOR(2 downto 0) := "000";
   signal total_inserido   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal troco_armazenado : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal produto_escolhido: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal preco_produto    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   
   -- Sinal de saída
   signal valor_displays   : STD_LOGIC_VECTOR(23 downto 0);

   -- Instância do componente a ser testado
   component Mux_Msg_Selector
      port (
         estado_fsm       : in STD_LOGIC_VECTOR(2 downto 0);
         total_inserido   : in STD_LOGIC_VECTOR(7 downto 0);
         troco_armazenado : in STD_LOGIC_VECTOR(7 downto 0);
         produto_escolhido: in STD_LOGIC_VECTOR(3 downto 0);
         preco_produto    : in STD_LOGIC_VECTOR(7 downto 0);
         valor_displays   : out STD_LOGIC_VECTOR(23 downto 0)
      );
   end component;

begin
   -- Instância do componente
   UUT: Mux_Msg_Selector
      port map (
         estado_fsm       => estado_fsm,
         total_inserido   => total_inserido,
         troco_armazenado => troco_armazenado,
         produto_escolhido=> produto_escolhido,
         preco_produto    => preco_produto,
         valor_displays   => valor_displays
      );

   -- Processo de teste
   process
   begin
      -- Teste 1: Estado ESPERA ("EP xxx")
      estado_fsm <= "000";
      total_inserido <= "00101100";  -- 44 em decimal (BCD: 0100 0100)
      wait for 5 ns;
      assert valor_displays = "111011010000000001000100"
         report "Erro no estado ESPERA" severity error;
			
      -- Teste 2: Estado SELECAO ("SL xxx")
		wait for 5 ns;
      estado_fsm <= "001";
      total_inserido <= "00010100";  -- 20 em decimal (BCD: 0010 0000)
      wait for 5 ns;
      assert valor_displays = "101010110000000000100000"
         report "Erro no estado SELECAO" severity error;

      -- Teste 3: Estado TROCO ("T xxx")
		wait for 5 ns;
      estado_fsm <= "010";
      troco_armazenado <= "00001010";  -- 10 em decimal (BCD: 0001 0000)
      wait for 5 ns;
      assert valor_displays = "110000000000000000010000"
         report "Erro no estado TROCO" severity error;

      -- Teste 4: Estado LIBERA_PRODUTO ("PL xxx")
		wait for 5 ns;
      estado_fsm <= "011";
      produto_escolhido <= "0101";  -- Produto 5
      wait for 5 ns;
      assert valor_displays = "110110110000000000000101"
         report "Erro no estado LIBERA_PRODUTO" severity error;

      -- Teste 5: Estado ERRO ("E")
		wait for 5 ns;
      estado_fsm <= "100";
      wait for 5 ns;
      assert valor_displays = "111000000000000000000000"
         report "Erro no estado ERRO" severity error;

      -- Teste 6: Estado FINALIZADO ("F")
		wait for 5 ns;
      estado_fsm <= "101";
      wait for 5 ns;
      assert valor_displays = "111100000000000000000000"
         report "Erro no estado FINALIZADO" severity error;

      -- Teste 7: Estado EXIBE_PRECO_PRODUTO ("P xxx")
		wait for 5 ns;
      estado_fsm <= "110";
      preco_produto <= "00111100";  -- 60 em decimal (BCD: 0110 0000)
      wait for 5 ns;
      assert valor_displays = "110100000000000001100000"
         report "Erro no estado EXIBE_PRECO_PRODUTO" severity error;

      -- Teste 8: Estado inválido (todos os displays apagados)
		wait for 5 ns;
      estado_fsm <= "111";
      wait for 5 ns;
      assert valor_displays = "000000000000000000000000"
         report "Erro no estado inválido" severity error;

      -- Finalização do teste
      report "Teste concluído!" severity note;
      wait;
   end process;
end Behavioral;