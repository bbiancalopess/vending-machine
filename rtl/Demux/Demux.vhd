library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demux is
	port (
		dados			: in STD_LOGIC;
		sel			: in STD_LOGIC;
		saida0		: out STD_LOGIC;
		saida1		: out STD_LOGIC
	);
end Demux;

architecture Behavioral of Demux is
begin
	process(dados, sel)
	begin
		case sel is
			when '0' =>
				saida0 <= dados;
				saida1 <= '0';
			when '1' =>
				saida0 <= '0';
				saida1 <= dados;
			when others =>
				saida0 <= '0';
				saida1 <= '1';
		end case;
	end process;
end Behavioral;