library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm_tb is
end fsm_tb;

architecture Behavioral of fsm_tb is
   -- Sinais de entrada
   signal clk                      : STD_LOGIC := '0';
   signal coin_inserted            : STD_LOGIC := '0';
   signal insert_more_coins        : STD_LOGIC := '0';
   signal product_chosen           : STD_LOGIC := '0';
   signal dont_insert_more_coins   : STD_LOGIC := '0';
   signal compare_maior_igual      : STD_LOGIC := '0';
   signal compare_maior            : STD_LOGIC := '0';

   -- Sinais de saída
   signal select_demux             : STD_LOGIC;
   signal load_saldo               : STD_LOGIC;
   signal clear_saldo              : STD_LOGIC;
   signal load_troco_reg           : STD_LOGIC;
   signal clear_troco_reg          : STD_LOGIC;
   signal retorna_troco            : STD_LOGIC;
   signal libera_produto           : STD_LOGIC;
   signal estado_fsm               : STD_LOGIC_VECTOR(2 downto 0);

   -- Constantes
   constant CLK_PERIOD : time := 10 ns;

begin
   -- Instanciação da FSM
   uut: entity work.fsm
      port map (
         clk => clk,
         coin_inserted => coin_inserted,
         insert_more_coins => insert_more_coins,
         product_chosen => product_chosen,
         dont_insert_more_coins => dont_insert_more_coins,
         compare_maior_igual => compare_maior_igual,
         compare_maior => compare_maior,
         select_demux => select_demux,
         load_saldo => load_saldo,
         clear_saldo => clear_saldo,
         load_troco_reg => load_troco_reg,
         clear_troco_reg => clear_troco_reg,
         retorna_troco => retorna_troco,
         libera_produto => libera_produto,
         estado_fsm => estado_fsm
      );

   -- Geração do clock
   clk_process: process
   begin
      clk <= '0';
      wait for CLK_PERIOD / 2;
      clk <= '1';
      wait for CLK_PERIOD / 2;
   end process;

   -- Processo de teste
   test_process: process
   begin
      -- Teste 1: Reset quando coin_inserted = '1' e product_chosen = '1'
      coin_inserted <= '1';
      product_chosen <= '1';
      wait for CLK_PERIOD;
      assert estado_fsm = "111" report "Erro no Teste 1" severity error;

      -- Teste 2: Reset quando insert_more_coins = '1' e dont_insert_more_coins = '1'
      coin_inserted <= '0';
      product_chosen <= '0';
      insert_more_coins <= '1';
      dont_insert_more_coins <= '1';
      wait for CLK_PERIOD;
      assert estado_fsm = "111" report "Erro no Teste 2" severity error;
		
		-- Teste 3: Estado ESPERA
		coin_inserted <= '0';
      product_chosen <= '0';
      insert_more_coins <= '0';
      dont_insert_more_coins <= '0';
		wait for CLK_PERIOD;
		assert estado_fsm = "000" report "Erro no teste 3" severity error;
		
      -- Teste 4: Inserção de moeda
      insert_more_coins <= '0';
      dont_insert_more_coins <= '0';
      coin_inserted <= '1';
      wait for CLK_PERIOD;
      assert estado_fsm = "001" report "Erro no Teste 4" severity error;

      -- Teste 5: Seleção de produto com saldo insuficiente
		coin_inserted <= '0';
		wait for CLK_PERIOD;
      product_chosen <= '1';
      wait for CLK_PERIOD;
      assert estado_fsm = "010" report "Erro no Teste 5" severity error;

		-- Teste 6: estado ERRO
      product_chosen <= '0';
		compare_maior_igual <= '0';
		wait for CLK_PERIOD;
		assert estado_fsm = "100" report "Erro no Teste 6" severity error;
		
		-- Teste 7: Inserção de mais moedas
      insert_more_coins <= '1';
      wait for CLK_PERIOD;
      assert estado_fsm = "000" report "Erro no Teste 7" severity error;

      -- Finalização do teste
      report "Teste finalizado!" severity note;
		wait;
   end process;

end Behavioral;