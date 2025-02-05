library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Somador is
	port (
		total_inserido	: in STD_LOGIC_VECTOR(7 downto 0);
		coin_value		: in STD_LOGIC_VECTOR(3 downto 0);
		resultado		: out STD_LOGIC_VECTOR(7 downto 0)
	);
end Somador;

architecture Behavioral of Somador is
begin
	resultado <= total_inserido + ("0000" & coin_value);
end Behavioral;