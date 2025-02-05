library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_Selector_Displays_TB is
end Mux_Selector_Displays_TB;

architecture Behavioral of Mux_Selector_Displays_TB is
   signal clk             : STD_LOGIC := '0';
   signal estado_fsm      : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
   signal saldo_atual     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal troco_armazenado: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal produto_escolhido: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal preco_produto   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal valor_displays  : STD_LOGIC_VECTOR(23 downto 0);
   signal display_segments: STD_LOGIC_VECTOR(6 downto 0);
   signal display_anodes  : STD_LOGIC_VECTOR(5 downto 0);

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

   component Mux_Displays
      port (
         clk             : in STD_LOGIC;
         valor           : in STD_LOGIC_VECTOR(23 downto 0);
         display_segments: out STD_LOGIC_VECTOR(6 downto 0);
         display_anodes  : out STD_LOGIC_VECTOR(5 downto 0)
      );
   end component;

begin
   -- Instância do Mux_Msg_Selector
   U1: Mux_Msg_Selector
      port map (
         estado_fsm       => estado_fsm,
         total_inserido   => saldo_atual,
         troco_armazenado => troco_armazenado,
         produto_escolhido=> produto_escolhido,
         preco_produto    => preco_produto,
         valor_displays   => valor_displays
      );

   -- Instância do Mux_Displays
   U2: Mux_Displays
      port map (
         clk             => clk,
         valor           => valor_displays,
         display_segments=> display_segments,
         display_anodes  => display_anodes
      );

   -- Geração do clock
   clk <= not clk after 5 ns;

   -- Processo de teste
   process
   begin
      -- Teste 1: Estado ESPERA, saldo 10
      estado_fsm <= "000";  -- Estado ESPERA
      saldo_atual <= "00001010";  -- 10
      wait for 10 ns;
      assert valor_displays = "111011010000000000010000"  -- "EP 010"
         report "Erro no Teste 1" severity error;

      -- Teste 2: Estado TROCO, troco 5
      estado_fsm <= "010";  -- Estado TROCO
      troco_armazenado <= "00000101";  -- 5
      wait for 10 ns;
      assert valor_displays = "110000000000000000000101"  -- "T 005"
         report "Erro no Teste 2" severity error;
			
		-- Teste 3: Verificar se a saída dos displays está correta
		wait for 40 ns;
		assert display_segments = "0010010" -- Mostra 5
			report "Erro no Teste 3" severity error;
		-- Teste 4
		assert display_anodes = "111110" -- No display 0
			report "Erro no Teste 4" severity error;
			
		-- Teste 5
		wait for 10 ns;
		assert display_segments = "1000000" -- Mostra 0
			report "Erro no Teste 3" severity error;
		-- Teste 6
		assert display_anodes = "111101" -- No display 1
			report "Erro no Teste 4" severity error;
			
		-- Teste 7
		wait for 10 ns;
		assert display_segments = "1000000" -- Mostra 0
			report "Erro no Teste 3" severity error;
		-- Teste 8
		assert display_anodes = "111011" -- No display 2
			report "Erro no Teste 4" severity error;
			
		-- Teste 9
		wait for 10 ns;
		assert display_segments = "1000000" -- Mostra 0
			report "Erro no Teste 3" severity error;
		-- Teste 10
		assert display_anodes = "110111" -- No display 3
			report "Erro no Teste 4" severity error;
			
		-- Teste 11
		wait for 10 ns;
		assert display_segments = "1000000" -- Mostra 0
			report "Erro no Teste 3" severity error;
		-- Teste 12
		assert display_anodes = "101111" -- No display 4
			report "Erro no Teste 4" severity error;
			
		-- Teste 13
		wait for 10 ns;
		assert display_segments = "0000111" -- Mostra T
			report "Erro no Teste 3" severity error;
		-- Teste 14
		assert display_anodes = "011111" -- No display 5
			report "Erro no Teste 4" severity error;

      -- Finalização do teste
      report "Teste do Mux_Msg_Selector e Mux_Displays concluído!" severity note;
      wait;
   end process;
end Behavioral;