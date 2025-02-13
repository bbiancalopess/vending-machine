library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all; 

entity Display_Controller_TB is
end Display_Controller_TB;

architecture Behavioral of Display_Controller_TB is
   -- Sinais de entrada
   signal estado_fsm       : STD_LOGIC_VECTOR(2 downto 0) := "000";
   signal total_inserido   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal troco_armazenado : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal produto_escolhido: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
   signal preco_produto    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   
   -- Sinal de saída
   signal display_segments   : STD_LOGIC_VECTOR(41 downto 0);

   -- Instância do componente a ser testado
   component Display_Controller
      port (
         estado_fsm 				: in STD_LOGIC_VECTOR(2 downto 0);
			total_inserido			: in STD_LOGIC_VECTOR(7 downto 0);
			troco_armazenado		: in STD_LOGIC_VECTOR(7 downto 0);
			produto_escolhido		: in STD_LOGIC_VECTOR(3 downto 0);
			preco_produto			: in STD_LOGIC_VECTOR(7 downto 0);
			display_segments		: out STD_LOGIC_VECTOR(41 downto 0)
      );
   end component;

begin
   -- Instância do componente
   UUT: Display_Controller
      port map (
         estado_fsm       => estado_fsm,
         total_inserido   => total_inserido,
         troco_armazenado => troco_armazenado,
         produto_escolhido=> produto_escolhido,
         preco_produto    => preco_produto,
         display_segments   => display_segments
      );

   -- Processo de teste
   process
   begin
      -- Teste 1: Estado ESPERA ("EP xxx")
      estado_fsm <= "000";
      total_inserido <= "00101100";  -- 44 em decimal (BCD: 0100 0100)
      wait for 10 ns;
      assert display_segments = "000011000011001111111100000000110010011001"
         report "Erro no estado ESPERA" severity error;
			
      -- Teste 2: Estado RETORNA_TROCO ("TR xxx")
      estado_fsm <= "110";
      troco_armazenado <= "00001010";  -- 10 em decimal (BCD: 0001 0000)
      wait for 10 ns;
      assert display_segments = "000011100010001111111100000011110011000000"
         report "Erro no estado TROCO" severity error;

      -- Teste 3: Estado LIBERA_PRODUTO ("PL xx")
      estado_fsm <= "011";
      produto_escolhido <= "0101";  -- Produto 5
      wait for 10 ns;
      assert display_segments = "000110010001111111111111111110000000010010"
         report "Erro no estado LIBERA_PRODUTO" severity error;

      -- Teste 4: Estado ERRO_VALOR ("E xxx")
      estado_fsm <= "100";
      total_inserido <= "00101100";  -- 44 em decimal (BCD: 0100 0100)
      wait for 10 ns;
      assert display_segments = "000011011111111111111100000000110010011001"
         report "Erro no estado ERRO" severity error;

      -- Teste 5: Estado inválido (todos os displays apagados)
      estado_fsm <= "111";
      wait for 10 ns;
      assert display_segments = "111111111111111111111111111111111111111111"
         report "Erro no estado inválido" severity error;

      -- Finalização do teste
      report "Teste concluído!" severity note;
      wait;
   end process;
end Behavioral;