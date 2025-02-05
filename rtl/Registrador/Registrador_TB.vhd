library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registrador_TB is
end Registrador_TB;

architecture Behavioral of Registrador_TB is
   signal clk : STD_LOGIC := '0';
   signal reset : STD_LOGIC;
   signal load : STD_LOGIC;
   signal dado : STD_LOGIC_VECTOR(7 downto 0);
   signal valor_armazenado : STD_LOGIC_VECTOR(7 downto 0);
begin
   -- Instanciação do componente Registrador
   UUT: entity work.Registrador
      port map (
         clk => clk,
         reset => reset,
         load => load,
         dado => dado,
         valor_armazenado => valor_armazenado
      );

   -- Geração do clock
   clk <= not clk after 5 ns;

   -- Processo de teste
   process
   begin
      -- Teste 1: Reset
      reset <= '0';
      wait for 2.5 ns;
		reset <= '1';
		wait for 7.5 ns;
      reset <= '0';
      assert valor_armazenado = "00000000" report "Erro no Teste 1" severity error;

      -- Teste 2: Carrega o valor 15
      dado <= "00001111";  -- 15
		wait for 12.5 ns;
      load <= '1';
		wait for 5 ns;
      assert valor_armazenado = "00001111" report "Erro no Teste 2" severity error;

		-- Teste 3: Reset
		wait for 2.5 ns;
      reset <= '1';
		wait for 5 ns;
      assert valor_armazenado = "00000000" report "Erro no Teste 3" severity error;
		
      -- Finaliza o teste
      wait;
   end process;
end Behavioral;