library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_Displays is
   Port (
      clk 					: in STD_LOGIC;                      	-- Sinal de clock
      valor 				: in STD_LOGIC_VECTOR(23 downto 0); 	-- Valor de 24 bits (6 dígitos/letras)
      display_segments 	: out STD_LOGIC_VECTOR(6 downto 0); 	-- Segmentos do display
      display_anodes 	: out STD_LOGIC_VECTOR(5 downto 0)    	-- Anodos dos 6 displays
   );
end Mux_Displays;

architecture Behavioral of Mux_Displays is
   signal display_counter : integer range 0 to 5 := 0;  -- Contador para selecionar o display
   signal digito_atual : STD_LOGIC_VECTOR(3 downto 0);  -- Dígito/letra atual
begin
   -- Processo para alternar entre os displays
   process(clk)
   begin
      if rising_edge(clk) then
         -- Incrementa o contador para alternar entre os displays
         if display_counter = 5 then
            display_counter <= 0;
         else
            display_counter <= display_counter + 1;
         end if;
      end if;
   end process;

   -- Seleciona o dígito/letra correspondente ao display ativo
   with display_counter select
      digito_atual <= valor(3 downto 0) when 0,   -- Display 0
                      valor(7 downto 4) when 1,   -- Display 1
                      valor(11 downto 8) when 2,  -- Display 2
                      valor(15 downto 12) when 3, -- Display 3
                      valor(19 downto 16) when 4, -- Display 4
                      valor(23 downto 20) when 5; -- Display 5

   -- Decodificador de 7 segmentos (dígitos e letras)
   process(digito_atual)
   begin
      case digito_atual is
         -- Dígitos (0-9)
         when "0000" => display_segments <= "1000000";  -- 0
         when "0001" => display_segments <= "1111001";  -- 1
         when "0010" => display_segments <= "0100100";  -- 2
         when "0011" => display_segments <= "0110000";  -- 3
         when "0100" => display_segments <= "0011001";  -- 4
         when "0101" => display_segments <= "0010010";  -- 5
         when "0110" => display_segments <= "0000010";  -- 6
         when "0111" => display_segments <= "1111000";  -- 7
         when "1000" => display_segments <= "0000000";  -- 8
         when "1001" => display_segments <= "0010000";  -- 9

         -- Letras (A-F, P, U, etc.)
         when "1010" => display_segments <= "0010010";  -- S
         when "1011" => display_segments <= "1000111";  -- L
         when "1100" => display_segments <= "0000111";  -- T
         when "1101" => display_segments <= "0001100";  -- P
         when "1110" => display_segments <= "0000110";  -- E
			when "1111" => display_segments <= "0001110";  -- F

         -- Apagado (default)
         when others => display_segments <= "1111111";  -- Apagado
      end case;
   end process;

   -- Ativa o display correspondente
   process(display_counter)
   begin
      case display_counter is
         when 0 => display_anodes <= "111110";  -- Ativa Display 0
         when 1 => display_anodes <= "111101";  -- Ativa Display 1
         when 2 => display_anodes <= "111011";  -- Ativa Display 2
         when 3 => display_anodes <= "110111";  -- Ativa Display 3
         when 4 => display_anodes <= "101111";  -- Ativa Display 4
         when 5 => display_anodes <= "011111";  -- Ativa Display 5
         when others => display_anodes <= "111111";  -- Todos desativados
      end case;
   end process;
end Behavioral;