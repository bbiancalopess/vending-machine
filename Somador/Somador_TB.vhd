library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Somador_TB is
end Somador_TB;

architecture Behavioral of Somador_TB is
	signal total_inserido : STD_LOGIC_VECTOR(7 downto 0);
	signal coin_value : STD_LOGIC_VECTOR(3 downto 0);
	signal resultado : STD_LOGIC_VECTOR(7 downto 0);
begin
	-- Instanciação do componente Somador
	UUT : entity work.Somador
		port map (
			total_inserido => total_inserido,
			coin_value => coin_value,
			resultado => resultado
		);
		
	-- Processo de teste
	process
	begin
		-- Teste 1: Soma de 5 + 10
		total_inserido <= "00001010";
		coin_value <= "0101";
		wait for 10 ns;
		assert resultado = "00001111" report "Erro no Teste 1" severity error;
		
		-- Teste 2: Soma de 15 + 3
		total_inserido <= "00001111";
		coin_value <= "0011";
		wait for 10 ns;
		assert resultado = "00010010" report "Erro no Teste 2" severity error;
		
		-- Finaliza o teste
		wait;
	end process;
end Behavioral;