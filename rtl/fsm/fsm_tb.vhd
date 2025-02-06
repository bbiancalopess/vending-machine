library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm_tb is
end fsm_tb;

architecture tb of fsm_tb is
    signal clk, reset, coin_inserted, product_selected, saldo_insuficiente, tem_troco : STD_LOGIC;
    signal estado_fsm : STD_LOGIC_VECTOR(2 downto 0);
    
    -- Instanciação da FSM
    component fsm
        port (
            clk: in STD_LOGIC;
            reset: in STD_LOGIC;
            coin_inserted: in STD_LOGIC;
            product_selected: in STD_LOGIC;
            saldo_insuficiente: in STD_LOGIC;
            tem_troco: in STD_LOGIC;
            estado_fsm: out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

begin
    -- Conectar os sinais ao componente FSM
    uut: fsm port map (clk, reset, coin_inserted, product_selected, saldo_insuficiente, tem_troco, estado_fsm);

    -- Geração do Clock (Período = 10ns)
    process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Simulação das Entradas
    process
    begin
        -- Inicialização
        reset <= '1';
        coin_inserted <= '0';
        product_selected <= '0';
        saldo_insuficiente <= '0';
        tem_troco <= '0';
        wait for 20 ns;
        
        -- Reset desativado
        reset <= '0';
        wait for 10 ns;
        
        -- Inserção de moeda
        coin_inserted <= '1';
        wait for 10 ns;
        coin_inserted <= '0';
        wait for 20 ns;
        
        -- Seleção do produto
        product_selected <= '1';
        wait for 10 ns;
        product_selected <= '0';

        -- Simula saldo insuficiente
        saldo_insuficiente <= '1';
        wait for 10 ns;
        saldo_insuficiente <= '0';

        -- Simula entrega do produto com troco
        tem_troco <= '1';
        wait for 10 ns;
        tem_troco <= '0';

        -- Fim da simulação
        wait;
    end process;

end tb;
