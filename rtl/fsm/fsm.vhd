library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is 
	port (
		clk							: in STD_LOGIC;
		coin_inserted				: in STD_LOGIC;
		insert_more_coins			: in STD_LOGIC;
		product_chosen				: in STD_LOGIC;
		dont_insert_more_coins	: in STD_LOGIC;
		compare_maior_igual		: in STD_LOGIC;
		compare_maior				: in STD_LOGIC;
		select_demux 				: out STD_LOGIC;
		load_saldo 					: out STD_LOGIC;
		clear_saldo					: out STD_LOGIC;
		load_troco_reg				: out STD_LOGIC;
		clear_troco_reg 			: out STD_LOGIC;
		retorna_troco	 			: out STD_LOGIC;
		libera_produto 			: out STD_LOGIC;
		estado_fsm					: out STD_LOGIC_VECTOR(2 downto 0)
	);
end fsm;

architecture Behavioral of fsm is 
	type estado_type is (ESPERA_STATE, REGISTRA_MOEDA_STATE, VERIFICA_CREDITO_STATE, 
		LIBERA_PRODUTO_STATE, ERRO_VALOR_STATE, CALCULA_TROCO_STATE, RETORNA_TROCO_STATE, FINALIZA_STATE);
	signal estado_atual, proximo_estado : estado_type;
	signal reset : STD_LOGIC; -- Sinal de reset interno
begin
	-- Lógica de reset
	reset <= '1' when (coin_inserted = '1' and product_chosen = '1') or
							(insert_more_coins = '1' and dont_insert_more_coins = '1')
					else '0';
	-- Processo para atualização do estado atual
	process(clk, reset)
	begin
		if reset = '1' then
			estado_atual <= FINALIZA_STATE;
		elsif rising_edge(clk) then 
			estado_atual <= proximo_estado;
		end if;
	end process;
	
	process(estado_atual, coin_inserted, insert_more_coins, product_chosen, dont_insert_more_coins, compare_maior_igual, compare_maior)
	begin
		case estado_atual is
			when ESPERA_STATE =>
				if coin_inserted = '1' then
					proximo_estado <= REGISTRA_MOEDA_STATE;
				elsif product_chosen = '1' then
					proximo_estado <= VERIFICA_CREDITO_STATE;
				else
					proximo_estado <= ESPERA_STATE;
				end if;

			when REGISTRA_MOEDA_STATE =>
				proximo_estado <= ESPERA_STATE;

			when VERIFICA_CREDITO_STATE =>
				if compare_maior_igual = '1' then
					proximo_estado <= LIBERA_PRODUTO_STATE;
				else
					proximo_estado <= ERRO_VALOR_STATE;
				end if;

			when ERRO_VALOR_STATE =>
				if insert_more_coins = '1' then
					proximo_estado <= ESPERA_STATE;
				elsif dont_insert_more_coins = '1' then
					proximo_estado <= FINALIZA_STATE;
				else 
					proximo_estado <= ERRO_VALOR_STATE;
				end if;

			when LIBERA_PRODUTO_STATE =>
				if compare_maior = '1' then
					proximo_estado <= CALCULA_TROCO_STATE;
				else
					proximo_estado <= FINALIZA_STATE;
				end if;

			when CALCULA_TROCO_STATE =>
				proximo_estado <= RETORNA_TROCO_STATE;

			when RETORNA_TROCO_STATE =>
				proximo_estado <= FINALIZA_STATE;

			when FINALIZA_STATE =>
				proximo_estado <= ESPERA_STATE;

			when others =>
				proximo_estado <= ESPERA_STATE;
		end case;
	end process;

	-- Saída do estado atual para debug
	process(estado_atual)
	begin
		-- Valores padrão
		select_demux <= '0';
		load_saldo <= '0';
		clear_saldo <= '0';
		load_troco_reg <= '0';
		clear_troco_reg <= '0';
		retorna_troco <= '0';
		libera_produto <= '0';
		
		case estado_atual is
			when ESPERA_STATE         => 
				estado_fsm <= "000";
				
			when REGISTRA_MOEDA_STATE => 
				estado_fsm <= "001";
				load_saldo <= '1';
			when VERIFICA_CREDITO_STATE => 
				estado_fsm <= "010";
			when LIBERA_PRODUTO_STATE => 
				estado_fsm <= "011";
				libera_produto <= '1';
			when ERRO_VALOR_STATE     => 
				estado_fsm <= "100";
				select_demux <= '1';
			when CALCULA_TROCO_STATE  => 
				estado_fsm <= "101";
				load_troco_reg <= '1';
			when RETORNA_TROCO_STATE  => 
				estado_fsm <= "110";
				retorna_troco <= '1';
			when FINALIZA_STATE       => 
				estado_fsm <= "111";
				clear_saldo <= '1';
				clear_troco_reg <= '1';
			when others         => 
				estado_fsm <= "000";
		end case;
	end process;

end Behavioral;
