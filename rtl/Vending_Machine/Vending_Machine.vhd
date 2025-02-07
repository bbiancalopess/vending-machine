library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Vending_Machine is 
	port (
		clk											: in STD_LOGIC;
		coin_inserted_more_coins				: in STD_LOGIC;
		product_chosen_not_more_coins			: in STD_LOGIC;
		coin_value									: in STD_LOGIC_VECTOR(3 downto 0);
		product_selection							: in STD_LOGIC_VECTOR(3 downto 0);
		retorna_troco	 							: out STD_LOGIC;
		libera_produto 							: out STD_LOGIC;
		troco_total									: out STD_LOGIC_VECTOR(7 downto 0);
		valor_displays								: out STD_LOGIC_VECTOR(41 downto 0)
	);
end Vending_Machine;

architecture Behavioral of Vending_Machine is 
	-- Sinais internos
	signal select_demux 					: STD_LOGIC;
	signal load_saldo 					: STD_LOGIC;
	signal clear_saldo					: STD_LOGIC;
	signal load_troco_reg				: STD_LOGIC;
	signal clear_troco_reg 				: STD_LOGIC;
	signal coin_inserted					: STD_LOGIC;
	signal insert_more_coins			: STD_LOGIC;
	signal product_chosen				: STD_LOGIC;
	signal dont_insert_more_coins		: STD_LOGIC;
	signal compare_maior_igual			: STD_LOGIC;
	signal compare_maior					: STD_LOGIC;
	signal estado_fsm						: STD_LOGIC_VECTOR(2 downto 0);
	
	-- Componentes
	component Datapath
		port (
			clk												: in STD_LOGIC;
			coin_inserted_more_coins					: in STD_LOGIC;
			product_chosen_not_more_coins				: in STD_LOGIC;
			select_demux									: in STD_LOGIC;
			load_saldo										: in STD_LOGIC;
			clear_saldo										: in STD_LOGIC;
			load_troco_reg									: in STD_LOGIC;
			clear_troco_reg								: in STD_LOGIC;
			coin_value										: in STD_LOGIC_VECTOR(3 downto 0);
			product_selection								: in STD_LOGIC_VECTOR(3 downto 0);
			estado_fsm										: in STD_LOGIC_VECTOR(2 downto 0);
			coin_inserted									: out STD_LOGIC;
			insert_more_coins								: out STD_LOGIC;
			product_chosen									: out STD_LOGIC;
			dont_insert_more_coins						: out STD_LOGIC;
			compare_maior_igual							: out STD_LOGIC;
			compare_maior									: out STD_LOGIC;		
			troco_total										: out STD_LOGIC_VECTOR(7 downto 0);
			valor_displays									: out STD_LOGIC_VECTOR(41 downto 0)
		);
	end component;
	
	component fsm
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
	end component;
begin
	-- Instanciação dos componentes
	caminhoDados: Datapath port map (
		clk 									=> clk,
		coin_inserted_more_coins 		=> coin_inserted_more_coins,
		product_chosen_not_more_coins => product_chosen_not_more_coins,
		select_demux 						=> select_demux,
		load_saldo							=> load_saldo,
		clear_saldo							=> clear_saldo,
		load_troco_reg						=> load_troco_reg,
		clear_troco_reg					=> clear_troco_reg,
		coin_value							=> coin_value,
		product_selection					=> product_selection,
		estado_fsm							=> estado_fsm,
		coin_inserted						=> coin_inserted,
		insert_more_coins					=> insert_more_coins,
		product_chosen						=> product_chosen,
		dont_insert_more_coins			=> dont_insert_more_coins,
		compare_maior_igual				=> compare_maior_igual,
		compare_maior						=> compare_maior,
		troco_total							=> troco_total,
		valor_displays						=> valor_displays
	);
	
	maquinaEstados : fsm port map (
		clk							=> clk,
		coin_inserted				=> coin_inserted,
		insert_more_coins			=> insert_more_coins,
		product_chosen				=> product_chosen,
		dont_insert_more_coins	=> dont_insert_more_coins,
		compare_maior_igual		=> compare_maior_igual,
		compare_maior				=> compare_maior,
		select_demux 				=> select_demux,
		load_saldo 					=> load_saldo,
		clear_saldo					=> clear_saldo,
		load_troco_reg				=> load_troco_reg,
		clear_troco_reg 			=> clear_troco_reg,
		retorna_troco	 			=> retorna_troco,
		libera_produto 			=> libera_produto,
		estado_fsm					=> estado_fsm
	);
	

end Behavioral;
