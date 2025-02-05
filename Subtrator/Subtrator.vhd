library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Subtrator is
   Port (
      total_inserido : in STD_LOGIC_VECTOR(7 downto 0);
      preco_produto : in STD_LOGIC_VECTOR(7 downto 0);
      troco : out STD_LOGIC_VECTOR(7 downto 0)
   );
end Subtrator;

architecture Behavioral of Subtrator is
begin
   troco <= total_inserido - preco_produto;
end Behavioral;