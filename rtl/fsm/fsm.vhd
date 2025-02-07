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
	type estado_type is (ESPERA, REGISTRA_MOEDA, VERIFICA_CREDITO, 
		LIBERA_PRODUTO, ERRO_VALOR, CALCULA_TROCO, RETORNA_TROCO, FINALIZA);
	signal estado_atual, proximo_estado : estado_type;
begin
	-- Processo para atualização do estado atual
	process(clk, coin_inserted, insert_more_coins, product_chosen, dont_insert_more_coins)
	begin
		if coin_inserted = '1' && product_chosen = '1' then
			estado_atual <= FINALIZA;
		elsif insert_more_coins = '1' && dont_insert_more_coins = '1' then
			estado_atual <= FINALIZA;
		elsif rising_edge(clk) then 
			estado_atual <= proximo_estado;
		end if;
	end process;
	
	process(estado_atual, coin_inserted, insert_more_coins, product_chosen, dont_insert_more_coins, compare_maior_igual, compare_maior)
	begin
		case estado_atual is
			when ESPERA =>
				if coin_inserted = '1' then
					proximo_estado <= REGISTRA_MOEDA;
				elsif product_chosen = '1' then
					proximo_estado <= VERIFICA_CREDITO;
				else
					proximo_estado <= ESPERA;
				end if;

			when REGISTRA_MOEDA =>
				proximo_estado <= ESPERA;

			when VERIFICA_CREDITO =>
				if compare_maior_igual = '1' then
					proximo_estado <= LIBERA_PRODUTO;
				else
					proximo_estado <= ERRO_VALOR;
				end if;

			when ERRO_VALOR =>
				if insert_more_coins = '1' then
					proximo_estado <= ESPERA;
				elsif dont_insert_more_coins = '1'
					proximo_estado <= FINALIZA;
				else 
					proximo_estado <= ERRO_VALOR;
				end if;

			when LIBERA_PRODUTO =>
				if compare_maior = '1' then
					proximo_estado <= CALCULA_TROCO;
				else
					proximo_estado <= FINALIZA;
				end if;

			when CALCULA_TROCO =>
				proximo_estado <= RETORNA_TROCO;

			when RETORNA_TROCO =>
				proximo_estado <= FINALIZA;

			when FINALIZA =>
				proximo_estado <= ESPERA;

			when others =>
				proximo_estado <= ESPERA;
		end case;
	end process;

	-- Saída do estado atual para debug
	process(estado_atual)
	begin
		case estado_atual is
			when ESPERA         => 
				estado_fsm <= "000";
				select_demux <= '0';
				load_saldo <= '0';
				clear_saldo <= '0';
				load_troco_reg <= '0';
				clear_troco_reg <= '0';
				retorna_troco <= '0';
				libera_produto <= '0';
			when REGISTRA_MOEDA => 
				estado_fsm <= "001";
				select_demux <= '0';
				load_saldo <= '1';
				clear_saldo <= '0';
				load_troco_reg <= '0';
				clear_troco_reg <= '0';
				retorna_troco <= '0';
				libera_produto <= '0';
			when VERIFICA_CREDITO => 
				estado_fsm <= "010";
				select_demux <= '0';
				load_saldo <= '0';
				clear_saldo <= '0';
				load_troco_reg <= '0';
				clear_troco_reg <= '0';
				retorna_troco <= '0';
				libera_produto <= '0';
			when LIBERA_PRODUTO => 
				estado_fsm <= "011";
				select_demux <= '0';
				load_saldo <= '0';
				clear_saldo <= '0';
				load_troco_reg <= '0';
				clear_troco_reg <= '0';
				retorna_troco <= '0';
				libera_produto <= '1';
			when ERRO_VALOR     => 
				estado_fsm <= "100";
				select_demux <= '1';
				load_saldo <= '0';
				clear_saldo <= '0';
				load_troco_reg <= '0';
				clear_troco_reg <= '0';
				retorna_troco <= '0';
				libera_produto <= '0';
			when CALCULA_TROCO  => 
				estado_fsm <= "101";
				select_demux <= '0';
				load_saldo <= '0';
				clear_saldo <= '0';
				load_troco_reg <= '1';
				clear_troco_reg <= '0';
				retorna_troco <= '0';
				libera_produto <= '0';
			when RETORNA_TROCO  => 
				estado_fsm <= "110";
				select_demux <= '0';
				load_saldo <= '0';
				clear_saldo <= '0';
				load_troco_reg <= '0';
				clear_troco_reg <= '0';
				retorna_troco <= '1';
				libera_produto <= '0';
			when FINALIZA       => 
				estado_fsm <= "111";
				select_demux <= '0';
				load_saldo <= '0';
				clear_saldo <= '1';
				load_troco_reg <= '0';
				clear_troco_reg <= '1';
				retorna_troco <= '0';
				libera_produto <= '0';
			when others         => 
				estado_fsm <= "000";
		end case;
	end process;

end Behavioral;
