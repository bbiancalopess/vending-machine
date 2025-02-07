library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Binary_4_to_BCD is
   Port (
      binary_in : in  STD_LOGIC_VECTOR(3 downto 0);
      bcd_out   : out STD_LOGIC_VECTOR(7 downto 0)
   );
end Binary_4_to_BCD;

architecture Behavioral of Binary_4_to_BCD is
begin
   process(binary_in)
   begin
      case binary_in is
         when "0000" => bcd_out <= "00000000"; -- '00'
         when "0001" => bcd_out <= "00000001"; -- '01'
         when "0010" => bcd_out <= "00000010"; -- '02'
         when "0011" => bcd_out <= "00000011"; -- '03'
         when "0100" => bcd_out <= "00000100"; -- '04'
         when "0101" => bcd_out <= "00000101"; -- '05'
         when "0110" => bcd_out <= "00000110"; -- '06'
         when "0111" => bcd_out <= "00000111"; -- '07'
         when "1000" => bcd_out <= "00001000"; -- '08'
			when "1001" => bcd_out <= "00001001"; -- '09'
			when "1010" => bcd_out <= "00010000"; -- '10'
			when "1011" => bcd_out <= "00010001"; -- '11'
			when "1100" => bcd_out <= "00010010"; -- '12'
			when "1101" => bcd_out <= "00010011"; -- '13'
			when "1110" => bcd_out <= "00010100"; -- '14'
			when "1111" => bcd_out <= "00010101"; -- '15'
			when others => bcd_out <= "11111111";  -- Default '0'
	   end case;
   end process;
end Behavioral;