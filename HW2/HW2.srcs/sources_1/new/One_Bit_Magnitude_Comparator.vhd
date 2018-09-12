----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/12/2018 01:06:15 PM
-- Module Name: One_Bit_Magnitude_Comparator - Behavioral
-- Project Name: HW2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity One_Bit_Magnitude_Comparator is
  Port ( input_a, input_b : in STD_LOGIC;
        output_less_than, output_equal, output_greater_than : out STD_LOGIC 
        );
end One_Bit_Magnitude_Comparator;

architecture Behavioral of One_Bit_Magnitude_Comparator is

begin

    output_less_than <= (input_a xor input_b) and input_b;
    output_equal <= input_a xnor input_b;
    output_greater_than <= (input_a xor input_b) and input_a;

end Behavioral;
