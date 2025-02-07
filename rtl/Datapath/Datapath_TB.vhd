library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Datapath_TB is
end Datapath_TB;

architecture Behavioral of Datapath_TB is
    -- Sinais de entrada
    signal clk                      : STD_LOGIC := '0';
    signal coin_inserted_more_coins : STD_LOGIC := '0';
    signal product_chosen_not_more_coins : STD_LOGIC := '0';
    signal select_demux             : STD_LOGIC := '0';
    signal load_saldo               : STD_LOGIC := '0';
    signal clear_saldo              : STD_LOGIC := '0';
    signal load_troco_reg           : STD_LOGIC := '0';
    signal clear_troco_reg          : STD_LOGIC := '0';
    signal coin_value               : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal product_selection        : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal estado_fsm               : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');

    -- Sinais de saída
    signal coin_inserted            : STD_LOGIC;
    signal insert_more_coins        : STD_LOGIC;
    signal product_chosen           : STD_LOGIC;
    signal dont_insert_more_coins   : STD_LOGIC;
    signal compare_maior_igual      : STD_LOGIC;
    signal compare_maior            : STD_LOGIC;
    signal troco_total              : STD_LOGIC_VECTOR(7 downto 0);
    signal valor_displays           : STD_LOGIC_VECTOR(41 downto 0);

    -- Constantes
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instanciação do Datapath
    uut: entity work.Datapath
        port map (
            clk => clk,
            coin_inserted_more_coins => coin_inserted_more_coins,
            product_chosen_not_more_coins => product_chosen_not_more_coins,
            select_demux => select_demux,
            load_saldo => load_saldo,
            clear_saldo => clear_saldo,
            load_troco_reg => load_troco_reg,
            clear_troco_reg => clear_troco_reg,
            coin_value => coin_value,
            product_selection => product_selection,
            estado_fsm => estado_fsm,
            coin_inserted => coin_inserted,
            insert_more_coins => insert_more_coins,
            product_chosen => product_chosen,
            dont_insert_more_coins => dont_insert_more_coins,
            compare_maior_igual => compare_maior_igual,
            compare_maior => compare_maior,
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
        clear_saldo <= '1';
        clear_troco_reg <= '1';
        wait for CLK_PERIOD;
        clear_saldo <= '0';
        clear_troco_reg <= '0';
		  wait for CLK_PERIOD;

        -- Teste 1: Inserção de moedas
        estado_fsm <= "000";  -- Estado ESPERA
        coin_value <= "0101"; -- Inserir 5 unidades
        coin_inserted_more_coins <= '1';
        select_demux <= '0';  -- Seleciona a saída 0 do demux (coin_inserted)
        load_saldo <= '1';
        wait for CLK_PERIOD;
        load_saldo <= '0';
        assert valor_displays = "000011000011001111111100000010000000010010" report "Erro no Teste 1" severity error;

        -- Teste 2: Seleção de produto e verificação de saldo
        estado_fsm <= "011";  -- Estado LIBERA_PRODUTO
        product_selection <= "0001"; -- Produto 1 (R$10)
        product_chosen_not_more_coins <= '1';
        select_demux <= '0';  -- Seleciona a saída 0 do demux (product_chosen)
        wait for CLK_PERIOD;
        assert compare_maior_igual = '0' report "Erro no Teste 2" severity error;

        -- Teste 3: Inserção de mais moedas para comprar o produto
        estado_fsm <= "000";  -- Estado ESPERA
        coin_value <= "0101"; -- Inserir mais 5 unidades
        coin_inserted_more_coins <= '1';
        select_demux <= '0';  -- Seleciona a saída 0 do demux (coin_inserted)
        load_saldo <= '1';
        wait for CLK_PERIOD;
        load_saldo <= '0';
        assert valor_displays = "000011000011001111111100000011110011000000" report "Erro no Teste 3" severity error;

        -- Teste 4: Verificação de saldo suficiente para comprar o produto
        estado_fsm <= "011";  -- Estado LIBERA_PRODUTO
        product_selection <= "0001"; -- Produto 1 (R$10)
        product_chosen_not_more_coins <= '1';
        select_demux <= '0';  -- Seleciona a saída 0 do demux (product_chosen)
        wait for CLK_PERIOD;
        assert compare_maior_igual = '1' report "Erro no Teste 4" severity error;

        -- Teste 5: Liberação do produto e cálculo do troco
        estado_fsm <= "110";  -- Estado RETORNA_TROCO
        load_troco_reg <= '1';
        wait for CLK_PERIOD;
        load_troco_reg <= '0';
        assert troco_total = "00000000" report "Erro no Teste 5" severity error;
		  
		  -- Finaliza e limpa registradores e displays
		  estado_fsm <= "111";
		  clear_troco_reg <= '1';
		  clear_saldo <= '1';
		  wait for CLK_PERIOD;
		  clear_troco_reg <= '0';
		  clear_saldo <= '0';

        -- Teste 6: Exibição no display
        estado_fsm <= "000";  -- Estado ESPERA
        wait for CLK_PERIOD;
        assert valor_displays = "000011000011001111111100000010000001000000" report "Erro no Teste 6" severity error;

        -- Finalização do teste
		  report "Teste concluído!" severity note;
        wait;
    end process;

end Behavioral;