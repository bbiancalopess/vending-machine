library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.ALL;

entity Demux_TB is
end Demux_TB;

architecture testbench of Demux_TB is
	component Demux
		port (
			dados		: in STD_LOGIC;
			sel		: in STD_LOGIC;
			saida0	: out STD_LOGIC;
			saida1	: out STD_LOGIC
		);
	end component;
	
	-- Sinais para a simulação
	signal dados : STD_LOGIC := '0';
	signal sel : STD_LOGIC := '0';
	signal saida0 : STD_LOGIC;
	signal saida1 : STD_LOGIC;
	
begin
	-- Instanciação do componente
	UUT: Demux
		port map (
			dados => dados,
			sel => sel,
			saida0 => saida0,
			saida1 => saida1
		);
		
	process
	begin
	   -- Teste 1: sel = 0, dados = 0 (Esperado: saida0 = 0, saida1 = 0)
      dados <= '0'; sel <= '0';
      wait for 10 ns;
      assert (saida0 = '0' and saida1 = '0')
         report "Erro: sel=0, dados=0 deveria resultar em saida0=0, saida1=0"
         severity error;

      -- Teste 2: sel = 0, dados = 1 (Esperado: saida0 = 1, saida1 = 0)
      dados <= '1'; sel <= '0';
      wait for 10 ns;
      assert (saida0 = '1' and saida1 = '0')
         report "Erro: sel=0, dados=1 deveria resultar em saida0=1, saida1=0"
         severity error;

      -- Teste 3: sel = 1, dados = 0 (Esperado: saida0 = 0, saida1 = 0)
      dados <= '0'; sel <= '1';
      wait for 10 ns;
      assert (saida0 = '0' and saida1 = '0')
         report "Erro: sel=1, dados=0 deveria resultar em saida0=0, saida1=0"
         severity error;

      -- Teste 4: sel = 1, dados = 1 (Esperado: saida0 = 0, saida1 = 1)
      dados <= '1'; sel <= '1';
      wait for 10 ns;
      assert (saida0 = '0' and saida1 = '1')
         report "Erro: sel=1, dados=1 deveria resultar em saida0=0, saida1=1"
         severity error;

      -- Indicar sucesso e encerrar simulação
      report "Testbench finalizado com sucesso!" severity note;
      wait;
   end process;
end testbench;