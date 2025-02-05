library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registrador is
   Port (
      clk : in STD_LOGIC;
      reset : in STD_LOGIC;
      load : in STD_LOGIC;
      dado : in STD_LOGIC_VECTOR(7 downto 0);
      valor_armazenado : out STD_LOGIC_VECTOR(7 downto 0)
   );
end Registrador;

architecture Behavioral of Registrador is
begin
   process(clk, reset)
   begin
      if reset = '1' then
         valor_armazenado <= (others => '0');
      elsif rising_edge(clk) then
         if load = '1' then
            valor_armazenado <= dado;
         end if;
      end if;
   end process;
end Behavioral;