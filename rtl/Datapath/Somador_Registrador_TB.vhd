library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Somador_Registrador_TB is
end Somador_Registrador_TB;

architecture Behavioral of Somador_Registrador_TB is
   signal clk             : STD_LOGIC := '0';
   signal coin_value      : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal load_acumulador : STD_LOGIC := '0';
   signal clear_acumulador: STD_LOGIC := '0';
   signal saldo_atual     : STD_LOGIC_VECTOR(7 downto 0);
   signal novo_saldo      : STD_LOGIC_VECTOR(7 downto 0);

   component Somador
      port (
         total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
         coin_value     : in STD_LOGIC_VECTOR(3 downto 0);
         resultado      : out STD_LOGIC_VECTOR(7 downto 0)
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
   -- Instância do Somador
   U1: Somador
      port map (
         total_inserido => saldo_atual,
         coin_value     => coin_value,
         resultado      => novo_saldo
      );

   -- Instância do Registrador
   U2: Registrador
      port map (
         clk              => clk,
         reset            => clear_acumulador,
         load             => load_acumulador,
         dado             => novo_saldo,
         valor_armazenado => saldo_atual
      );

   -- Geração do clock
   clk <= not clk after 5 ns;

   -- Processo de teste
   process
   begin
		
		clear_acumulador <= '1';
      wait for 10 ns;
      clear_acumulador <= '0';
		wait for 10 ns;
	
      -- Teste 1: Adicionar 5 ao saldo inicial 0
      coin_value <= "0101";  -- 5
      load_acumulador <= '1';
      wait for 10 ns;
      load_acumulador <= '0';
      wait for 10 ns;
      assert saldo_atual = "00000101"  -- 5
         report "Erro no Teste 1" severity error;

      -- Teste 2: Adicionar 3 ao saldo atual 5
      coin_value <= "0011";  -- 3
      load_acumulador <= '1';
      wait for 10 ns;
      load_acumulador <= '0';
      wait for 10 ns;
      assert saldo_atual = "00001000"  -- 8
         report "Erro no Teste 2" severity error;

      -- Teste 3: Resetar o registrador
      clear_acumulador <= '1';
      wait for 10 ns;
      clear_acumulador <= '0';
      wait for 10 ns;
      assert saldo_atual = "00000000"  -- 0
         report "Erro no Teste 3" severity error;
			
      -- Finalização do teste
      report "Teste do Somador e Registrador concluído!" severity note;
      wait;
   end process;
end Behavioral;