library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datapath is
	port (
		clk						: in STD_LOGIC;
		coin_value				: in STD_LOGIC_VECTOR(3 downto 0);
		product_selection		: in STD_LOGIC_VECTOR(3 downto 0);
		load_acumulador		: in STD_LOGIC;
		clear_acumulador		: in STD_LOGIC;
		load_troco				: in STD_LOGIC;
		clear_troco				: in STD_LOGIC;
		estado_fsm				: in STD_LOGIC_VECTOR(2 downto 0);
		valor_displays			: out STD_LOGIC_VECTOR(23 downto 0);
		display_segments 		: out STD_LOGIC_VECTOR(6 downto 0);
		display_anodes			: out STD_LOGIC_VECTOR(5 downto 0);
		tem_troco				: out STD_LOGIC
	);
end Datapath;

architecture Behavioral of Datapath is
	signal saldo_atual 			: STD_LOGIC_VECTOR(7 downto 0);
	signal novo_saldo 			: STD_LOGIC_VECTOR(7 downto 0);
	signal preco_produto 		: STD_LOGIC_VECTOR(7 downto 0);
	signal troco 					: STD_LOGIC_VECTOR(7 downto 0);
	signal troco_armazenado 	: STD_LOGIC_VECTOR(7 downto 0);
	signal sinal_maior_igual 	: STD_LOGIC;
	signal sinal_maior 			: STD_LOGIC;
	signal saldo_resetado 		: STD_LOGIC_VECTOR(7 downto 0);
	signal valor_displays_mux 	: STD_LOGIC_VECTOR(23 downto 0);
	
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

   component Mux_Displays
      port (
         clk 					: in STD_LOGIC;
         valor 				: in STD_LOGIC_VECTOR(23 downto 0);
         display_segments 	: out STD_LOGIC_VECTOR(6 downto 0);
         display_anodes 	: out STD_LOGIC_VECTOR(5 downto 0)
      );
   end component;
	
	component Mux_Msg_Selector
		port (
			estado_fsm       : in STD_LOGIC_VECTOR(2 downto 0);
			total_inserido   : in STD_LOGIC_VECTOR(7 downto 0);
			troco_armazenado : in STD_LOGIC_VECTOR(7 downto 0);
			produto_escolhido: in STD_LOGIC_VECTOR(3 downto 0);
			preco_produto    : in STD_LOGIC_VECTOR(7 downto 0);
			valor_displays   : out STD_LOGIC_VECTOR(23 downto 0)
		);
	end component;
	
begin
	-- Instanciação dos componentes
	U1: Somador port map (
		total_inserido => saldo_atual,
		coin_value 		=> coin_value,
      resultado 		=> novo_saldo
	);
	
	U2: Comparador_Maior_Igual port map (
      total_inserido 	=> saldo_atual,
      preco_produto 		=> preco_produto,
      sinal_maior_igual => sinal_maior_igual
   );
	
	U3: Comparador_Maior port map (
      total_inserido => saldo_atual,
      preco_produto 	=> preco_produto,
      sinal_maior 	=> sinal_maior
   );
	
	U4: Decodificador_Produto port map (
      product_selection => product_selection,
      preco_produto 		=> preco_produto
   );
	
   U5: Registrador port map (
      clk 					=> clk,
      reset 				=> clear_acumulador,
      load 					=> load_acumulador,
      dado 					=> novo_saldo,
      valor_armazenado 	=> saldo_atual
   );

   U6: Subtrator port map (
      total_inserido => saldo_atual,
      preco_produto 	=> preco_produto,
      troco 			=> troco
   );

   U7: Mux_Displays port map (
      clk 					=> clk,
      valor 				=> valor_displays_mux,
      display_segments 	=> display_segments,
      display_anodes 	=> display_anodes
   );
	
	U8: Registrador port map (
		clk 					=> clk,
		reset					=> clear_troco,
		load 					=> load_troco,
		dado 					=> troco,
		valor_armazenado 	=> troco_armazenado
	);
	
	U9: Mux_Msg_Selector port map (
		estado_fsm 			=> estado_fsm,
		total_inserido 	=> saldo_atual,
		troco_armazenado 	=> troco_armazenado,
		produto_escolhido => product_selection,
		preco_produto 		=> preco_produto,
		valor_displays 	=> valor_displays_mux
	);
	
	valor_displays <= valor_displays_mux;
	
	tem_troco <= sinal_maior;
end Behavioral;