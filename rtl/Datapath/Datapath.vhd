library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Datapath is
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
end Datapath;

architecture Behavioral of Datapath is
	signal saldo_atual 							: STD_LOGIC_VECTOR(7 downto 0);
	signal novo_saldo 							: STD_LOGIC_VECTOR(7 downto 0);
	signal preco_produto_sinal					: STD_LOGIC_VECTOR(7 downto 0);
	signal troco_sinal							: STD_LOGIC_VECTOR(7 downto 0);
	signal troco_armazenado 					: STD_LOGIC_VECTOR(7 downto 0);
	signal compare_maior_igual_sinal 		: STD_LOGIC;
	signal compare_maior_sinal 				: STD_LOGIC;
	
	-- Componentes
	component Somador 
		port (
			total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
			coin_value 		: in STD_LOGIC_VECTOR(3 downto 0);
			resultado 		: out STD_LOGIC_VECTOR(7 downto 0)
		);
	end component;
	
	component Comparador_Maior_Igual 
		port (
			total_inserido 	: in STD_LOGIC_VECTOR(7 downto 0);
			preco_produto 		: in STD_LOGIC_VECTOR(7 downto 0);
			sinal_maior_igual : out STD_LOGIC
		);
	end component;
	
	component Comparador_Maior 
		port (
			total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
			preco_produto 	: in STD_LOGIC_VECTOR(7 downto 0);
			sinal_maior 	: out STD_LOGIC
		);
	end component;
	
	component Decodificador_Produto
      port (
         product_selection : in STD_LOGIC_VECTOR(3 downto 0);
         preco_produto 		: out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;
	
	component Registrador
      port (
         clk 					: in STD_LOGIC;
         reset 				: in STD_LOGIC;
         load 					: in STD_LOGIC;
         dado 					: in STD_LOGIC_VECTOR(7 downto 0);
         valor_armazenado 	: out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;
	
	component Subtrator
      port (
         total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
         preco_produto 	: in STD_LOGIC_VECTOR(7 downto 0);
         troco 			: out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;

	component Display_Controller
		port (
			estado_fsm 				: in STD_LOGIC_VECTOR(2 downto 0);
			total_inserido			: in STD_LOGIC_VECTOR(7 downto 0);
			troco_armazenado		: in STD_LOGIC_VECTOR(7 downto 0);
			produto_escolhido		: in STD_LOGIC_VECTOR(3 downto 0);
			preco_produto			: in STD_LOGIC_VECTOR(7 downto 0);
			display_segments		: out STD_LOGIC_VECTOR(41 downto 0)
		);
	end component;
	
	component Demux
		port (
			dados			: in STD_LOGIC;
			sel			: in STD_LOGIC;
			saida0		: out STD_LOGIC;
			saida1		: out STD_LOGIC
		);
	end component;
	
begin
	-- Instanciação dos componentes
	soma: Somador port map (
		total_inserido => saldo_atual,
		coin_value 		=> coin_value,
      resultado 		=> novo_saldo
	);
	
	comp_maior_igual: Comparador_Maior_Igual port map (
      total_inserido 	=> saldo_atual,
      preco_produto 		=> preco_produto_sinal,
      sinal_maior_igual => compare_maior_igual_sinal
   );
	
	comp_maior: Comparador_Maior port map (
      total_inserido => saldo_atual,
      preco_produto 	=> preco_produto_sinal,
      sinal_maior 	=> compare_maior_sinal
   );
	
	decod_preco_prod: Decodificador_Produto port map (
      product_selection => product_selection,
      preco_produto 		=> preco_produto_sinal
   );
	
   reg_total_inserido: Registrador port map (
      clk 					=> clk,
      reset 				=> clear_saldo,
      load 					=> load_saldo,
      dado 					=> novo_saldo,
      valor_armazenado 	=> saldo_atual
   );

   subtracao: Subtrator port map (
      total_inserido => saldo_atual,
      preco_produto 	=> preco_produto_sinal,
      troco 			=> troco_sinal
   );

	reg_troco: Registrador port map (
		clk 					=> clk,
		reset					=> clear_troco_reg,
		load 					=> load_troco_reg,
		dado 					=> troco_sinal,
		valor_armazenado 	=> troco_armazenado
	);
	
	display: Display_Controller port map (
		estado_fsm				=> estado_fsm,
		total_inserido			=> saldo_atual,
		troco_armazenado		=> troco_armazenado,
		produto_escolhido		=> product_selection,
		preco_produto			=> preco_produto_sinal,
		display_segments		=> valor_displays
	);
		
	demux_coin_and_more_coins: Demux port map(
		dados			=> coin_inserted_more_coins,
		sel			=> select_demux,
		saida0		=> coin_inserted,
		saida1		=> insert_more_coins
	);
	
	demux_product_and_not_more_coins: Demux port map(
		dados			=> product_chosen_not_more_coins,
		sel			=> select_demux,
		saida0		=> product_chosen,
		saida1		=> dont_insert_more_coins
	);
	
	-- Atribuições às saídas
	troco_total <= troco_armazenado;
	compare_maior_igual <= compare_maior_igual_sinal;
	compare_maior <= compare_maior_sinal;
	
end Behavioral;