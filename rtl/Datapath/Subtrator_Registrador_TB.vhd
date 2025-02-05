library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Subtrator_Registrador_TB is
end Subtrator_Registrador_TB;

architecture Behavioral of Subtrator_Registrador_TB is
   signal clk             : STD_LOGIC := '0';
   signal saldo_atual     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal preco_produto   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal load_troco      : STD_LOGIC := '0';
   signal clear_troco     : STD_LOGIC := '0';
   signal troco           : STD_LOGIC_VECTOR(7 downto 0);
   signal troco_armazenado: STD_LOGIC_VECTOR(7 downto 0);

   component Subtrator
      port (
         total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
         preco_produto  : in STD_LOGIC_VECTOR(7 downto 0);
         troco          : out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;

   component Registrador
      port (
         clk              : in STD_LOGIC;
         reset            : in STD_LOGIC;
         load             : in STD_LOGIC;
         dado             : in STD_LOGIC_VECTOR(7 downto 0);
         valor_armazenado : out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;

begin
   -- Instância do Subtrator
   U1: Subtrator
      port map (
         total_inserido => saldo_atual,
         preco_produto  => preco_produto,
         troco          => troco
      );

   -- Instância do Registrador
   U2: Registrador
      port map (
         clk              => clk,
         reset            => clear_troco,
         load             => load_troco,
         dado             => troco,
         valor_armazenado => troco_armazenado
      );

   -- Geração do clock
   clk <= not clk after 5 ns;

   -- Processo de teste
   process
   begin
      -- Teste 1: Saldo 20, preço 15, troco 5
      saldo_atual <= "00010100";  -- 20
      preco_produto <= "00001111";  -- 15
      load_troco <= '1';
      wait for 10 ns;
      load_troco <= '0';
      wait for 10 ns;
      assert troco_armazenado = "00000101"  -- 5
         report "Erro no Teste 1" severity error;

      -- Teste 2: Resetar o registrador de troco
      clear_troco <= '1';
      wait for 10 ns;
      clear_troco <= '0';
      wait for 10 ns;
      assert troco_armazenado = "00000000"  -- 0
         report "Erro no Teste 2" severity error;

      -- Finalização do teste
      report "Teste do Subtrator e Registrador concluído!" severity note;
      wait;
   end process;
end Behavioral;