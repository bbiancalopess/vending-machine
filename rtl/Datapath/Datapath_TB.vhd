library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Datapath_TB is
end Datapath_TB;

architecture Behavioral of Datapath_TB is
    signal clk                         : STD_LOGIC := '0';
    signal coin_inserted_more_coins    : STD_LOGIC := '0';
    signal product_chosen_not_more_coins : STD_LOGIC := '0';
    signal select_demux                : STD_LOGIC := '0';
    signal load_saldo                  : STD_LOGIC := '0';
    signal clear_saldo                 : STD_LOGIC := '0';
    signal load_troco_reg              : STD_LOGIC := '0';
    signal clear_troco_reg             : STD_LOGIC := '0';
    signal coin_value                  : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal product_selection           : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal estado_fsm                  : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
    signal coin_inserted               : STD_LOGIC;
    signal insert_more_coins           : STD_LOGIC;
    signal product_chosen              : STD_LOGIC;
    signal dont_insert_more_coins      : STD_LOGIC;
    signal compare_maior_igual         : STD_LOGIC;
    signal compare_maior               : STD_LOGIC;        
    signal troco_total                 : STD_LOGIC_VECTOR(7 downto 0);
    signal valor_displays              : STD_LOGIC_VECTOR(41 downto 0);

    constant CLK_PERIOD : time := 10 ns;

begin
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

    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    stim_proc: process
    begin
        -- Inicialização
        clear_saldo <= '1';
        clear_troco_reg <= '1';
        wait for CLK_PERIOD;
        clear_saldo <= '0';
        clear_troco_reg <= '0';

        -- Cenário 1: Inserir moeda e verificar saldo
        coin_value <= "0101"; -- 5
        coin_inserted_more_coins <= '1';
        select_demux <= '0';
        load_saldo <= '1';
        wait for CLK_PERIOD;
        load_saldo <= '0';

        -- Cenário 2: Escolher produto e verificar comparação
        product_selection <= "0010"; -- Produto 2
        product_chosen_not_more_coins <= '1';
        select_demux <= '0';
        wait for CLK_PERIOD;

        -- Cenário 3: Verificar troco
        load_troco_reg <= '1';
        wait for CLK_PERIOD;
        load_troco_reg <= '0';

        -- Cenário 4: Verificar display
        estado_fsm <= "010"; -- Estado de exibição
        wait for CLK_PERIOD;

        -- Finalização
        wait;
    end process;
end Behavioral;