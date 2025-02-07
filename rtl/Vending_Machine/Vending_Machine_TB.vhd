library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Vending_Machine_TB is
end Vending_Machine_TB;

architecture Behavioral of Vending_Machine_TB is
    -- Sinais de entrada
    signal clk                      : STD_LOGIC := '0';
    signal coin_inserted_more_coins : STD_LOGIC := '0';
    signal product_chosen_not_more_coins : STD_LOGIC := '0';
    signal coin_value               : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal product_selection        : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

    -- Sinais de saída
    signal retorna_troco            : STD_LOGIC;
    signal libera_produto           : STD_LOGIC;
    signal troco_total              : STD_LOGIC_VECTOR(7 downto 0);
    signal valor_displays           : STD_LOGIC_VECTOR(41 downto 0);

    -- Constantes
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instanciação da Vending_Machine
    uut: entity work.Vending_Machine
        port map (
            clk => clk,
            coin_inserted_more_coins => coin_inserted_more_coins,
            product_chosen_not_more_coins => product_chosen_not_more_coins,
            coin_value => coin_value,
            product_selection => product_selection,
            retorna_troco => retorna_troco,
            libera_produto => libera_produto,
            troco_total => troco_total,
            valor_displays => valor_displays
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
        -- Inicialização
        wait for CLK_PERIOD;

        -- Teste 1: Inserção de moedas
        coin_value <= "0101"; -- Inserir 5 unidades
        coin_inserted_more_coins <= '1';
        wait for CLK_PERIOD;
        coin_inserted_more_coins <= '0';
        wait for CLK_PERIOD;
        assert valor_displays = "000011000011001111111100000010000000010010" report "Erro no Teste 1" severity error;

        -- Teste 2: Seleção de produto com saldo insuficiente
        product_selection <= "0001"; -- Produto 1 (R$10)
        product_chosen_not_more_coins <= '1';
        wait for CLK_PERIOD;
        product_chosen_not_more_coins <= '0';
        wait for CLK_PERIOD;
        assert libera_produto = '0' report "Erro no Teste 2" severity error;
		  -- Teste 3
		  assert valor_displays = "000011011111111111111100000010000000010010" report "Erro no Teste 3" severity error;
			
        -- Teste 4: Seleciona inserção de mais moedas e volta para ESPERA
        coin_inserted_more_coins <= '1';
        wait for CLK_PERIOD;
        coin_inserted_more_coins <= '0';
        wait for CLK_PERIOD;
        assert valor_displays = "000011000011001111111100000010000000010010" report "Erro no Teste 4" severity error;

		  -- Teste 5: Inserção de mais moedas
        coin_value <= "0110"; -- Inserir 5 unidades
        coin_inserted_more_coins <= '1';
        wait for CLK_PERIOD;
        coin_inserted_more_coins <= '0';
        wait for CLK_PERIOD;
        assert valor_displays = "000011000011001111111100000011110011111001" report "Erro no Teste 5" severity error;
		  
		  -- Teste 6: Verificação de saldo suficiente para comprar o produto
        product_selection <= "0001"; -- Produto 1 (R$10)
        product_chosen_not_more_coins <= '1';
        wait for CLK_PERIOD;
        product_chosen_not_more_coins <= '0';
        wait for CLK_PERIOD;
        assert libera_produto = '1' report "Erro no Teste 6" severity error;
		  
        -- Teste 7: Liberação do produto e cálculo do troco
        wait for CLK_PERIOD;
		  wait for CLK_PERIOD;
        assert retorna_troco = '1' report "Erro no Teste 7" severity error;
        -- Teste 8
		  assert troco_total = "00000001" report "Erro no Teste 8" severity error;

        -- Teste 9: Finaliza e limpa registradores e displays
        wait for CLK_PERIOD;
		  wait for CLK_PERIOD;
        assert troco_total = "00000000" report "Erro no Teste 9" severity error;
        -- Teste 10
		  assert valor_displays = "000011000011001111111100000010000001000000" report "Erro no Teste 10" severity error;

		  -- Teste 11: Inserção de moedas
        coin_value <= "0101"; -- Inserir 5 unidades
        coin_inserted_more_coins <= '1';
        wait for CLK_PERIOD;
        coin_inserted_more_coins <= '0';
        wait for CLK_PERIOD;
        assert valor_displays = "000011000011001111111100000010000000010010" report "Erro no Teste 11" severity error;
		  
		  -- Teste 12: Aciona reset
		  product_chosen_not_more_coins <= '1';
		  coin_inserted_more_coins <= '1';
		  wait for CLK_PERIOD;
		  product_chosen_not_more_coins <= '0';
		  coin_inserted_more_coins <= '0';
		  wait for CLK_PERIOD;
		  assert troco_total = "00000000" report "Erro no Teste 12" severity error;
        -- Teste 13
		  assert valor_displays = "000011000011001111111100000010000001000000" report "Erro no Teste 13" severity error;
		  
        -- Finalização do teste
        report "Teste concluído!" severity note;
		  wait;
    end process;

end Behavioral;