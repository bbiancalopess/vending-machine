library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_Displays_TB is
end Mux_Displays_TB;

architecture Behavioral of Mux_Displays_TB is
   signal clk : STD_LOGIC := '0';
   signal valor : STD_LOGIC_VECTOR(23 downto 0);
   signal display_segments : STD_LOGIC_VECTOR(6 downto 0);
   signal display_anodes : STD_LOGIC_VECTOR(5 downto 0);

   constant CLK_PERIOD : time := 10 ns;  -- Clock de 100 MHz (10 ns de período)
begin
   -- Instanciação do Mux_Displays
   UUT: entity work.Mux_Displays
      port map (
         clk => clk,
         valor => valor,
         display_segments => display_segments,
         display_anodes => display_anodes
      );

   -- Geração do clock
   process
   begin
      clk <= not clk;
      wait for CLK_PERIOD / 2;
   end process;

   -- Processo de teste
   process
   begin
      -- Teste 1: Exibe "PEACE"
      valor <= "110111101010110011101111";  -- "P", "E", "A", "C", "E"
      wait for 5 * CLK_PERIOD;  -- Aguarda um ciclo completo de multiplexação
		
		-- Verifica se os displays estão corretos
      wait for CLK_PERIOD / 2;
		assert display_segments = "1111111" and display_anodes = "111110"  -- display apagado
         report "Erro no Display 0" severity error;
		
		wait for CLK_PERIOD;
      assert display_segments = "0000110" and display_anodes = "111101"  -- E no Display 4
         report "Erro no Display 1" severity error;

      wait for CLK_PERIOD;
      assert display_segments = "1000110" and display_anodes = "111011"  -- C no Display 3
         report "Erro no Display 2" severity error;

      wait for CLK_PERIOD;
      assert display_segments = "0001000" and display_anodes = "110111"  -- A no Display 2
         report "Erro no Display 3" severity error;

      wait for CLK_PERIOD;
      assert display_segments = "0000110" and display_anodes = "101111"  -- E no Display 1
         report "Erro no Display 4" severity error;

      wait for CLK_PERIOD;
		assert display_segments = "0001100" and display_anodes = "011111"  -- P no Display 0
         report "Erro no Display 5" severity error;
      

      -- Finaliza o teste
      wait;
   end process;
end Behavioral;