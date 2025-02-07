library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Display_Controller is 
	port (
		estado_fsm 				: in STD_LOGIC_VECTOR(2 downto 0);
		total_inserido			: in STD_LOGIC_VECTOR(7 downto 0);
		troco_armazenado		: in STD_LOGIC_VECTOR(7 downto 0);
		produto_escolhido		: in STD_LOGIC_VECTOR(3 downto 0);
		preco_produto			: in STD_LOGIC_VECTOR(7 downto 0);
		display_segments		: out STD_LOGIC_VECTOR(41 downto 0)
	);
end Display_Controller;

architecture Behavioral of Display_Controller is

	-- Códigos para os caracteres no display de 7 segmentos
   constant CHAR_E : STD_LOGIC_VECTOR(3 downto 0) := "1101";  -- 'E'
   constant CHAR_P : STD_LOGIC_VECTOR(3 downto 0) := "1100";  -- 'P'
   constant CHAR_L : STD_LOGIC_VECTOR(3 downto 0) := "1010";  -- 'L'
   constant CHAR_T : STD_LOGIC_VECTOR(3 downto 0) := "1011";  -- 'T'
	constant CHAR_R : STD_LOGIC_VECTOR(3 downto 0) := "1110";  -- 'R'
	constant APAGADO : STD_LOGIC_VECTOR(3 downto 0) := "1111";  -- ' '

	-- Sinais para armazenar os valores BCD
   signal total_inserido_bcd : STD_LOGIC_VECTOR(11 downto 0);
   signal preco_produto_bcd  : STD_LOGIC_VECTOR(11 downto 0);
   signal troco_armazenado_bcd : STD_LOGIC_VECTOR(11 downto 0);
	signal produto_escolhido_bcd : STD_LOGIC_VECTOR(7 downto 0);
	signal valor_displays : STD_LOGIC_VECTOR(23 downto 0);
	signal digito_atual : STD_LOGIC_VECTOR(3 downto 0);
	signal display_segments_sig :STD_LOGIC_VECTOR(41 downto 0);
	
	-- Componente para conversão de binário para BCD
   component Binary_8_To_BCD
      port (
         binary_in : in STD_LOGIC_VECTOR(7 downto 0);
         bcd_out   : out STD_LOGIC_VECTOR(11 downto 0)
      );
   end component;
	
	component Binary_4_to_BCD
      port (
         binary_in : in STD_LOGIC_VECTOR(3 downto 0);
         bcd_out   : out STD_LOGIC_VECTOR(7 downto 0)
      );
   end component;
	
begin
   -- Instâncias do componente Binary_to_BCD
   U1: Binary_8_To_BCD 
		port map (
			binary_in => total_inserido,
			bcd_out   => total_inserido_bcd
		);

   U2: Binary_8_To_BCD 
		port map (
			binary_in => preco_produto,
			bcd_out   => preco_produto_bcd
		);

   U3: Binary_8_To_BCD 
		port map (
			binary_in => troco_armazenado,
			bcd_out   => troco_armazenado_bcd
		);
	
	U4: Binary_4_to_BCD
		port map (
			binary_in => produto_escolhido,
			bcd_out   => produto_escolhido_bcd
		);

   -- Processo para selecionar a mensagem a ser exibida
   process(estado_fsm, total_inserido_bcd, troco_armazenado_bcd, produto_escolhido_bcd, preco_produto_bcd)
   begin
      case estado_fsm is
         when "000" =>  -- Estado ESPERA: Exibir "EP xxx"
            valor_displays <= CHAR_E & CHAR_P & APAGADO & total_inserido_bcd(11 downto 8) & total_inserido_bcd(7 downto 4) & total_inserido_bcd(3 downto 0);
         when "011" =>  -- Estado LIBERA_PRODUTO: Exibir "PL  xx"
            valor_displays <= CHAR_P & CHAR_L & APAGADO & APAGADO & produto_escolhido_bcd(7 downto 4) & produto_escolhido_bcd(3 downto 0);
         when "110" =>  -- Estado RETORNA_TROCO: Exibir "TR xxx"
            valor_displays <= CHAR_T & CHAR_R & APAGADO & troco_armazenado_bcd(11 downto 8) & troco_armazenado_bcd(7 downto 4) & troco_armazenado_bcd(3 downto 0);
         when "100" =>  -- Estado ERRO_VALOR: Exibir "E xxx"
            valor_displays <= CHAR_E & APAGADO & APAGADO & total_inserido_bcd(11 downto 8) & total_inserido_bcd(7 downto 4) & total_inserido_bcd(3 downto 0);
         when others =>  -- Estado inválido ou padrão
            valor_displays <= (others => '1');  -- Apagado
      end case;
   end process;
	
	-- Processo para decodificar os dígitos e gerar a saída de 42 bits
   process(valor_displays)
      variable temp_segments : STD_LOGIC_VECTOR(41 downto 0);
   begin
		case valor_displays(3 downto 0) is
			-- Dígitos (0-9)
			when "0000" => temp_segments(6 downto 0) := "1000000";  -- 0
			when "0001" => temp_segments(6 downto 0) := "1111001";  -- 1
			when "0010" => temp_segments(6 downto 0) := "0100100";  -- 2
			when "0011" => temp_segments(6 downto 0) := "0110000";  -- 3
			when "0100" => temp_segments(6 downto 0) := "0011001";  -- 4
			when "0101" => temp_segments(6 downto 0) := "0010010";  -- 5
			when "0110" => temp_segments(6 downto 0) := "0000010";  -- 6
			when "0111" => temp_segments(6 downto 0) := "1111000";  -- 7
			when "1000" => temp_segments(6 downto 0) := "0000000";  -- 8
			when "1001" => temp_segments(6 downto 0) := "0010000";  -- 9

			-- Letras (P, L, T, E, R)
			when "1010" => temp_segments(6 downto 0) := "1000111";  -- L
			when "1011" => temp_segments(6 downto 0) := "0000111";  -- T
			when "1100" => temp_segments(6 downto 0) := "0001100";  -- P
			when "1101" => temp_segments(6 downto 0) := "0000110";  -- E
			when "1110" => temp_segments(6 downto 0) := "0001000";  -- R
			when "1111" => temp_segments(6 downto 0) := "1111111";  -- Apagado
			when others => temp_segments(6 downto 0) := "1111111";  -- Apagado
		end case;
		
		case valor_displays(7 downto 4) is
			-- Dígitos (0-9)
			when "0000" => temp_segments(13 downto 7) := "1000000";  -- 0
			when "0001" => temp_segments(13 downto 7) := "1111001";  -- 1
			when "0010" => temp_segments(13 downto 7) := "0100100";  -- 2
			when "0011" => temp_segments(13 downto 7) := "0110000";  -- 3
			when "0100" => temp_segments(13 downto 7) := "0011001";  -- 4
			when "0101" => temp_segments(13 downto 7) := "0010010";  -- 5
			when "0110" => temp_segments(13 downto 7) := "0000010";  -- 6
			when "0111" => temp_segments(13 downto 7) := "1111000";  -- 7
			when "1000" => temp_segments(13 downto 7) := "0000000";  -- 8
			when "1001" => temp_segments(13 downto 7) := "0010000";  -- 9

			-- Letras (P, L, T, E, R)
			when "1010" => temp_segments(13 downto 7) := "1000111";  -- L
			when "1011" => temp_segments(13 downto 7) := "0000111";  -- T
			when "1100" => temp_segments(13 downto 7) := "0001100";  -- P
			when "1101" => temp_segments(13 downto 7) := "0000110";  -- E
			when "1110" => temp_segments(13 downto 7) := "0001000";  -- R
			when "1111" => temp_segments(13 downto 7) := "1111111";  -- Apagado
			when others => temp_segments(13 downto 7) := "1111111";  -- Apagado
		end case;
		
		case valor_displays(11 downto 8) is
			-- Dígitos (0-9)
			when "0000" => temp_segments(20 downto 14) := "1000000";  -- 0
			when "0001" => temp_segments(20 downto 14) := "1111001";  -- 1
			when "0010" => temp_segments(20 downto 14) := "0100100";  -- 2
			when "0011" => temp_segments(20 downto 14) := "0110000";  -- 3
			when "0100" => temp_segments(20 downto 14) := "0011001";  -- 4
			when "0101" => temp_segments(20 downto 14) := "0010010";  -- 5
			when "0110" => temp_segments(20 downto 14) := "0000010";  -- 6
			when "0111" => temp_segments(20 downto 14) := "1111000";  -- 7
			when "1000" => temp_segments(20 downto 14) := "0000000";  -- 8
			when "1001" => temp_segments(20 downto 14) := "0010000";  -- 9

			-- Letras (P, L, T, E, R)
			when "1010" => temp_segments(20 downto 14) := "1000111";  -- L
			when "1011" => temp_segments(20 downto 14) := "0000111";  -- T
			when "1100" => temp_segments(20 downto 14) := "0001100";  -- P
			when "1101" => temp_segments(20 downto 14) := "0000110";  -- E
			when "1110" => temp_segments(20 downto 14) := "0001000";  -- R
			when "1111" => temp_segments(20 downto 14) := "1111111";  -- Apagado
			when others => temp_segments(20 downto 14) := "1111111";  -- Apagado
		end case;
		
		case valor_displays(15 downto 12) is
			-- Dígitos (0-9)
			when "0000" => temp_segments(27 downto 21) := "1000000";  -- 0
			when "0001" => temp_segments(27 downto 21) := "1111001";  -- 1
			when "0010" => temp_segments(27 downto 21) := "0100100";  -- 2
			when "0011" => temp_segments(27 downto 21) := "0110000";  -- 3
			when "0100" => temp_segments(27 downto 21) := "0011001";  -- 4
			when "0101" => temp_segments(27 downto 21) := "0010010";  -- 5
			when "0110" => temp_segments(27 downto 21) := "0000010";  -- 6
			when "0111" => temp_segments(27 downto 21) := "1111000";  -- 7
			when "1000" => temp_segments(27 downto 21) := "0000000";  -- 8
			when "1001" => temp_segments(27 downto 21) := "0010000";  -- 9

			-- Letras (P, L, T, E, R)
			when "1010" => temp_segments(27 downto 21) := "1000111";  -- L
			when "1011" => temp_segments(27 downto 21) := "0000111";  -- T
			when "1100" => temp_segments(27 downto 21) := "0001100";  -- P
			when "1101" => temp_segments(27 downto 21) := "0000110";  -- E
			when "1110" => temp_segments(27 downto 21) := "0001000";  -- R
			when "1111" => temp_segments(27 downto 21) := "1111111";  -- Apagado
			when others => temp_segments(27 downto 21) := "1111111";  -- Apagado
		end case;
		
		case valor_displays(19 downto 16) is
			-- Dígitos (0-9)
			when "0000" => temp_segments(34 downto 28) := "1000000";  -- 0
			when "0001" => temp_segments(34 downto 28) := "1111001";  -- 1
			when "0010" => temp_segments(34 downto 28) := "0100100";  -- 2
			when "0011" => temp_segments(34 downto 28) := "0110000";  -- 3
			when "0100" => temp_segments(34 downto 28) := "0011001";  -- 4
			when "0101" => temp_segments(34 downto 28) := "0010010";  -- 5
			when "0110" => temp_segments(34 downto 28) := "0000010";  -- 6
			when "0111" => temp_segments(34 downto 28) := "1111000";  -- 7
			when "1000" => temp_segments(34 downto 28) := "0000000";  -- 8
			when "1001" => temp_segments(34 downto 28) := "0010000";  -- 9

			-- Letras (P, L, T, E, R)
			when "1010" => temp_segments(34 downto 28) := "1000111";  -- L
			when "1011" => temp_segments(34 downto 28) := "0000111";  -- T
			when "1100" => temp_segments(34 downto 28) := "0001100";  -- P
			when "1101" => temp_segments(34 downto 28) := "0000110";  -- E
			when "1110" => temp_segments(34 downto 28) := "0001000";  -- R
			when "1111" => temp_segments(34 downto 28) := "1111111";  -- Apagado
			when others => temp_segments(34 downto 28) := "1111111";  -- Apagado
		end case;
		
		case valor_displays(23 downto 20) is
			-- Dígitos (0-9)
			when "0000" => temp_segments(41 downto 35) := "1000000";  -- 0
			when "0001" => temp_segments(41 downto 35) := "1111001";  -- 1
			when "0010" => temp_segments(41 downto 35) := "0100100";  -- 2
			when "0011" => temp_segments(41 downto 35) := "0110000";  -- 3
			when "0100" => temp_segments(41 downto 35) := "0011001";  -- 4
			when "0101" => temp_segments(41 downto 35) := "0010010";  -- 5
			when "0110" => temp_segments(41 downto 35) := "0000010";  -- 6
			when "0111" => temp_segments(41 downto 35) := "1111000";  -- 7
			when "1000" => temp_segments(41 downto 35) := "0000000";  -- 8
			when "1001" => temp_segments(41 downto 35) := "0010000";  -- 9

			-- Letras (P, L, T, E, R)
			when "1010" => temp_segments(41 downto 35) := "1000111";  -- L
			when "1011" => temp_segments(41 downto 35) := "0000111";  -- T
			when "1100" => temp_segments(41 downto 35) := "0001100";  -- P
			when "1101" => temp_segments(41 downto 35) := "0000110";  -- E
			when "1110" => temp_segments(41 downto 35) := "0001000";  -- R
			when "1111" => temp_segments(41 downto 35) := "1111111";  -- Apagado
			when others => temp_segments(41 downto 35) := "1111111";  -- Apagado
		end case;
		
      display_segments_sig <= temp_segments;
		
   end process;
	
	-- Atribuição da saída
   display_segments <= display_segments_sig;
	
end Behavioral;	
	