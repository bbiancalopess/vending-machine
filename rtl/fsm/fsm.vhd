library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fsm is 
	port (
		clk						: in STD_LOGIC;
		reset						: in STD_LOGIC;
		coin_inserted			: in STD_LOGIC;
		product_selected		: in STD_LOGIC;
		saldo_insuficiente	: in STD_LOGIC;
		tem_troco				: in STD_LOGIC;
		estado_fsm				: out STD_LOGIC_VECTOR(2 downto 0)
	);
end fsm;

architecture Behavioral of fsm is 
	type estado_type is (ESPERA, REGISTRA_MOEDA, VERIFICA_CREDITO, 
		LIBERA_PRODUTO, ERRO_VALOR, CALCULA_TROCO, RETORNA_TROCO, FINALIZA);
	signal estado_atual, proximo_estado : estado_type;
begin
	-- Processo para atualização do estado atual
	process(clk, reset)
	begin
		if reset = '1' then
			estado_atual <= ESPERA;
		elsif rising_edge(clk) then 
			estado_atual <= proximo_estado;
		end if;
	end process;
	
		process(estado_atual, coin_inserted, product_selected, saldo_insuficiente, tem_troco)
	begin
		case estado_atual is
			when ESPERA =>
				if coin_inserted = '1' then
					proximo_estado <= REGISTRA_MOEDA;
				else
					proximo_estado <= ESPERA;
				end if;

			when REGISTRA_MOEDA =>
				proximo_estado <= VERIFICA_CREDITO;

			when VERIFICA_CREDITO =>
				if saldo_insuficiente = '1' then
					proximo_estado <= ERRO_VALOR;
				else
					proximo_estado <= LIBERA_PRODUTO;
				end if;

			when ERRO_VALOR =>
				if coin_inserted = '1' then
					proximo_estado <= REGISTRA_MOEDA;
				else
					proximo_estado <= ESPERA;
				end if;

			when LIBERA_PRODUTO =>
				if tem_troco = '1' then
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
			when ESPERA         => estado_fsm <= "000";
			when REGISTRA_MOEDA => estado_fsm <= "001";
			when VERIFICA_CREDITO => estado_fsm <= "010";
			when LIBERA_PRODUTO => estado_fsm <= "011";
			when ERRO_VALOR     => estado_fsm <= "100";
			when CALCULA_TROCO  => estado_fsm <= "101";
			when RETORNA_TROCO  => estado_fsm <= "110";
			when FINALIZA       => estado_fsm <= "111";
			when others         => estado_fsm <= "000";
		end case;
	end process;

end Behavioral;
