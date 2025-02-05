library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_Msg_Selector is
   port (
      estado_fsm       : in STD_LOGIC_VECTOR(2 downto 0);  -- Estado atual da FSM
      total_inserido   : in STD_LOGIC_VECTOR(7 downto 0);  -- Valor total inserido
      troco_armazenado : in STD_LOGIC_VECTOR(7 downto 0);  -- Valor do troco
      produto_escolhido: in STD_LOGIC_VECTOR(3 downto 0);  -- Número do produto escolhido
      preco_produto    : in STD_LOGIC_VECTOR(7 downto 0);  -- Preço do produto escolhido
      valor_displays   : out STD_LOGIC_VECTOR(23 downto 0) -- Valor a ser exibido nos displays
   );
end Mux_Msg_Selector;

architecture Behavioral of Mux_Msg_Selector is
   -- Códigos para os caracteres no display de 7 segmentos
   constant CHAR_E : STD_LOGIC_VECTOR(3 downto 0) := "1110";  -- 'E'
   constant CHAR_P : STD_LOGIC_VECTOR(3 downto 0) := "1101";  -- 'P'
   constant CHAR_S : STD_LOGIC_VECTOR(3 downto 0) := "1010";  -- 'S'
   constant CHAR_L : STD_LOGIC_VECTOR(3 downto 0) := "1011";  -- 'L'
   constant CHAR_T : STD_LOGIC_VECTOR(3 downto 0) := "1100";  -- 'T'
   constant CHAR_F : STD_LOGIC_VECTOR(3 downto 0) := "1111";  -- 'F'

   -- Sinais para armazenar os valores BCD
   signal total_inserido_bcd : STD_LOGIC_VECTOR(11 downto 0);
   signal preco_produto_bcd  : STD_LOGIC_VECTOR(11 downto 0);
   signal troco_armazenado_bcd : STD_LOGIC_VECTOR(11 downto 0);

   -- Componente para conversão de binário para BCD
   component Binary_to_BCD
      port (
         binary_in : in STD_LOGIC_VECTOR(7 downto 0);
         bcd_out   : out STD_LOGIC_VECTOR(11 downto 0)
      );
   end component;

begin
   -- Instâncias do componente Binary_to_BCD
   U1: Binary_to_BCD port map (
      binary_in => total_inserido,
      bcd_out   => total_inserido_bcd
   );

   U2: Binary_to_BCD port map (
      binary_in => preco_produto,
      bcd_out   => preco_produto_bcd
   );

   U3: Binary_to_BCD port map (
      binary_in => troco_armazenado,
      bcd_out   => troco_armazenado_bcd
   );

   -- Processo para selecionar a mensagem a ser exibida
   process(estado_fsm, total_inserido_bcd, troco_armazenado_bcd, produto_escolhido, preco_produto_bcd)
   begin
      case estado_fsm is
         when "000" =>  -- Estado ESPERA: Exibir "EP xxx"
            valor_displays <= CHAR_E & CHAR_P & "0000" & total_inserido_bcd(11 downto 8) & total_inserido_bcd(7 downto 4) & total_inserido_bcd(3 downto 0);
         when "001" =>  -- Estado SELECAO: Exibir "SL xxx"
            valor_displays <= CHAR_S & CHAR_L & "0000" & total_inserido_bcd(11 downto 8) & total_inserido_bcd(7 downto 4) & total_inserido_bcd(3 downto 0);
         when "010" =>  -- Estado TROCO: Exibir "T xxx"
            valor_displays <= CHAR_T & "00000000" & troco_armazenado_bcd(11 downto 8) & troco_armazenado_bcd(7 downto 4) & troco_armazenado_bcd(3 downto 0);
         when "011" =>  -- Estado LIBERA_PRODUTO: Exibir "PL xxx"
            valor_displays <= CHAR_P & CHAR_L & "000000000000" & produto_escolhido(3 downto 0);
         when "100" =>  -- Estado ERRO: Exibir "E"
            valor_displays <= CHAR_E & "00000000000000000000";
         when "101" =>  -- Estado FINALIZADO: Exibir "F"
            valor_displays <= CHAR_F & "00000000000000000000";
         when "110" =>  -- Estado EXIBE_PRECO_PRODUTO: Exibir "P xxx"
            valor_displays <= CHAR_P & "00000000" & preco_produto_bcd(11 downto 8) & preco_produto_bcd(7 downto 4) & preco_produto_bcd(3 downto 0);
         when others =>  -- Estado inválido ou padrão
            valor_displays <= (others => '0');  -- Apagado
      end case;
   end process;
end Behavioral;