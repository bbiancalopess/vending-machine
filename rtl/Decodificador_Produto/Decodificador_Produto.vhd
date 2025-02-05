library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador_Produto is
	port (
		product_selection	: in STD_LOGIC_VECTOR(3 downto 0);
		preco_produto		: out STD_LOGIC_VECTOR(7 downto 0)
	);
end Decodificador_Produto;

architecture Behavioral of Decodificador_Produto is
begin
	process(product_selection)
	begin
		case product_selection is		
			when "0001" => preco_produto <= "00001010"; -- Produto 1: R$10
			
			when "0010" => preco_produto <= "01000011"; -- Produto 2: R$67
			
			when "0011" => preco_produto <= "11001011"; -- Produto 3: R$203
			
			when "0100" => preco_produto <= "10100111"; -- Produto 4: R$167
			
			when "0101" => preco_produto <= "11111101"; -- Produto 5: R$253
			
			when "0110" => preco_produto <= "10001011"; -- Produto 6: R$139
			
			when "0111" => preco_produto <= "11000110"; -- Produto 7: R$198
			
			when "1000" => preco_produto <= "01111100"; -- Produto 8: R$124
			
			when "1001" => preco_produto <= "10001000"; -- Produto 9: R$136
			
			when "1010" => preco_produto <= "00110101"; -- Produto 10: R$53
			
			when "1011" => preco_produto <= "01001010"; -- Produto 11: R$74
			
			when "1100" => preco_produto <= "01110111"; -- Produto 12: R$119
			
			when "1101" => preco_produto <= "01100111"; -- Produto 13: R$103
			
			when "1110" => preco_produto <= "01101001"; -- Produto 14: R$105
			
			when "1111" => preco_produto <= "00100110"; -- Produto 15: R$38
			
			when others => preco_produto <= (others => '0'); -- Produto inválido
		end case;
	end process;
end Behavioral;
