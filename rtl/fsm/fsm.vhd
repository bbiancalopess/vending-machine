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
	
	process(estado_atual, coin<