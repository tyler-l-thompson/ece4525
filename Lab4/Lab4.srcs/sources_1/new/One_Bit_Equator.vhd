----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/24/2018 12:16:08 PM
-- Design Name: Lab4
-- Module Name: One_Bit_Equator - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity One_Bit_Equator is
    Port ( input_a : in STD_LOGIC;
           input_b : in STD_LOGIC;
           output : out STD_LOGIC);
end One_Bit_Equator;

architecture Behavioral of One_Bit_Equator is

begin
    output <= not ( (input_a and not input_b) or (input_b and not input_a) );

end Behavioral;
