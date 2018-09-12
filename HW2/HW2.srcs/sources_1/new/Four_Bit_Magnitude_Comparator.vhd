----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/12/2018 12:22:44 PM
-- Module Name: Four_Bit_Magnitude_Comparator - Behavioral
-- Project Name: HW2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_Bit_Magnitude_Comparator is
  Port ( 
    input_a0, input_a1, input_a2, input_a3, input_b0, input_b1, input_b2, input_b3, input_less_than, input_equal, input_greater_than : in STD_LOGIC;
    output_less_than, output_equal, output_greater_than : out STD_LOGIC
  );
end Four_Bit_Magnitude_Comparator;

architecture Behavioral of Four_Bit_Magnitude_Comparator is

signal less_than, equal, greater_than : STD_LOGIC:='1';

begin




end Behavioral;
