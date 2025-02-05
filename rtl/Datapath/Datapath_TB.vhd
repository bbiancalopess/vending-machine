library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Datapath_TB is
end Datapath_TB;

architecture Behavioral of Datapath_TB is
   -- Sinais de entrada
   signal clk             : STD_LOGIC := '0';
   signal coin_value      : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal product_selection: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal load_acumulador : STD_LOGIC := '0';
   signal clear_acumulador: STD_LOGIC := '0';
   signal load_troco      : STD_LOGIC := '0';
   signal clear_troco     : STD_LOGIC := '0';
   signal estado_fsm      : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
   
   -- Sinais de saída
   signal valor_displays  : STD_LOGIC_VECTOR(23 downto 0);
   signal display_segments: STD_LOGIC_VECTOR(6 downto 0);
   signal display_anodes  : STD_LOGIC_VECTOR(5 downto 0);
   signal tem_troco       : STD_LOGIC;

   -- Instância do componente a ser testado
   component Datapath
      port (
         clk             : in STD_LOGIC;
         coin_value      : in STD_LOGIC_VECTOR(3 downto 0);
         product_selection: in STD_LOGIC_VECTOR(3 downto 0);
         load_acumulador : in STD_LOGIC;
         clear_acumulador: in STD_LOGIC;
         load_troco      : in STD_LOGIC;
         clear_troco     : in STD_LOGIC;
         estado_fsm      : in STD_LOGIC_VECTOR(2 downto 0);
         valor_displays  : out STD_LOGIC_VECTOR(23 downto 0);
         display_segments: out STD_LOGIC_VECTOR(6 downto 0);
         display_anodes  : out STD_LOGIC_VECTOR(5 downto 0);
         tem_troco       : out STD_LOGIC
      );
   end component;

begin
   -- Instância do componente
   UUT: Datapath
      port map (
         clk             => clk,
         coin_value      => coin_value,
         product_selection=> product_selection,
         load_acumulador => load_acumulador,
         clear_acumulador=> clear_acumulador,
         load_troco      => load_troco,
         clear_troco     => clear_troco,
         estado_fsm      => estado_fsm,
         valor_displays  => valor_displays,
         display_segments=> display_segments,
         display_anodes  => display_anodes,
         tem_troco       => tem_troco
      );

   -- Geração do clock
   clk <= not clk after 5 ns;

   -- Processo de teste
   process
   begin
      -- Teste 1: Inserção de moedas e exibição do saldo
      estado_fsm <= "000";  -- Estado ESPERA
      coin_value <= "0101"; -- Inserir 5 unidades
      load_acumulador <= '1';
      wait for 10 ns;
      load_acumulador <= '0';
      wait for 10 ns;
      assert valor_displays = "11101101000000000101"  -- "EP 005"
         report "Erro no Teste 1" severity error;

      -- Teste 2: Seleção de produto e verificação de saldo
      estado_fsm <= "001";  -- Estado SELECAO
      product_selection <= "0001";  -- Produto 1 (preço 10)
      wait for 10 ns;
      assert valor_displays = "10101011000000000101"  -- "SL 005"
         report "Erro no Teste 2" severity error;

      -- Teste 3: Cálculo de troco
      estado_fsm <= "010";  -- Estado TROCO
      load_troco <= '1';
      wait for 10 ns;
      load_troco <= '0';
      wait for 10 ns;
      assert valor_displays = "11000000000000000101"  -- "T 005"
         report "Erro no Teste 3" severity error;

      -- Finalização do teste
      report "Teste concluído!" severity note;
      wait;
   end process;
end Behavioral;