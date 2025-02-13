library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_4_to_BCD_TB is
end Binary_4_to_BCD_TB;

architecture Behavioral of Binary_4_to_BCD_TB is
   -- Sinal genérico para instanciar o DUT com diferentes tamanhos
   signal binary_in  : STD_LOGIC_VECTOR(3 downto 0);
   signal bcd_out    : STD_LOGIC_VECTOR(7 downto 0);

   -- Instância do componente a ser testado
   component Binary_4_to_BCD
      port (
         binary_in : in STD_LOGIC_VECTOR(3 downto 0);
			bcd_out   : out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;

begin
   -- Instância do componente
   UUT: Binary_4_to_BCD
      port map (
         binary_in       => binary_in,
         bcd_out   => bcd_out
      );
		

   -- Processo de teste
   process
   begin
      -- Teste 1: 12 em decimal (BCD: 0001 0010)
      binary_in <= "1100";
      wait for 5 ns;
      assert bcd_out = "00010010"
         report "Erro no Teste 1" severity error;
			
      -- Teste 2: 5 em decimal (BCD: 0000 0101)
		wait for 5 ns;
      binary_in <= "0101";
      wait for 5 ns;
      assert bcd_out = "00000101"
         report "Erro no Teste 2" severity error;

      -- Teste 3: 10 em decimal (BCD: 0001 0000)
		wait for 5 ns;
      binary_in <= "1010";
      wait for 5 ns;
      assert bcd_out = "00010000"
         report "Erro no Teste 3" severity error;

      -- Teste 4: 13 em decimal (BCD: 0001 0011)
		wait for 5 ns;
      binary_in <= "1101";
      wait for 5 ns;
      assert bcd_out = "00010011"
         report "Erro no Teste 4" severity error;
			
		-- Teste 5: 15 em decimal (BCD: 0001 0101)
		wait for 5 ns;
      binary_in <= "1111";
      wait for 5 ns;
      assert bcd_out = "00010101"
         report "Erro no Teste 5" severity error;
			
      -- Finalização do teste
      report "Teste concluído!" severity note;
      wait;
   end process;
end Behavioral;