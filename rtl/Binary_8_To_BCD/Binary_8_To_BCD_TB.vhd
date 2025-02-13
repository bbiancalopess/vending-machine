library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Binary_8_To_BCD_TB is
end Binary_8_To_BCD_TB;

architecture Behavioral of Binary_8_To_BCD_TB is
   -- Sinal genérico para instanciar o DUT com diferentes tamanhos
   signal binary_in  : STD_LOGIC_VECTOR(7 downto 0);
   signal bcd_out    : STD_LOGIC_VECTOR(11 downto 0);

   -- Instância do componente a ser testado
   component Binary_8_To_BCD
      port (
         binary_in : in STD_LOGIC_VECTOR(7 downto 0);
			bcd_out   : out STD_LOGIC_VECTOR(11 downto 0)
      );
   end component;

begin
   -- Instância do componente
   UUT: Binary_8_To_BCD
      port map (
         binary_in       => binary_in,
         bcd_out   => bcd_out
      );
		

   -- Processo de teste
   process
   begin
      -- Teste 1: 44 em decimal (BCD: 0100 0100)
      binary_in <= "00101100";
      wait for 5 ns;
      assert bcd_out = "000001000100"
         report "Erro no Teste 1" severity error;
			
      -- Teste 2: 20 em decimal (BCD: 0010 0000)
		wait for 5 ns;
      binary_in <= "00010100";
      wait for 5 ns;
      assert bcd_out = "000000100000"
         report "Erro no Teste 2" severity error;

      -- Teste 3: 10 em decimal (BCD: 0001 0000)
		wait for 5 ns;
      binary_in <= "00001010";
      wait for 5 ns;
      assert bcd_out = "000000010000"
         report "Erro no Teste 3" severity error;

      -- Teste 4: 60 em decimal (BCD: 0110 0000)
		wait for 5 ns;
      binary_in <= "00111100";
      wait for 5 ns;
      assert bcd_out = "000001100000"
         report "Erro no Teste 4" severity error;
			
		-- Teste 5: 255 em decimal (BCD: 0010 0101 0101)
		wait for 5 ns;
      binary_in <= "11111111";
      wait for 5 ns;
      assert bcd_out = "001001010101"
         report "Erro no Teste 5" severity error;
			
      -- Finalização do teste
      report "Teste concluído!" severity note;
      wait;
   end process;
end Behavioral;