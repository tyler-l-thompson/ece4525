----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/12/2018 01:06:15 PM
-- Module Name: One_Bit_Magnitude_Comparator - Behavioral
-- Project Name: HW2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity One_Bit_Magnitude_Comparator is
  Port ( 
--        input_a, input_b , input_less_than, input_equal, input_greater_than: in STD_LOGIC;
        input_a, input_b : in STD_LOGIC;
--        output_less_than, output_equal, output_greater_than : out STD_LOGIC
        output_equal, output_nand : out STD_LOGIC  
        );
end One_Bit_Magnitude_Comparator;

architecture Behavioral of One_Bit_Magnitude_Comparator is

signal nand_sig : STD_LOGIC;

begin

--    output_less_than <= ((input_a xor input_b) and input_b) and input_less_than;
--    output_equal <= (input_a xnor input_b) and input_equal;
--    output_greater_than <= ((input_a xor input_b) and input_a) and input_greater_than;
    nand_sig <= input_a nand input_b;
    output_nand <= nand_sig;
    output_equal <= (input_a and nand_sig) nor (input_b and nand_sig);
    
end Behavioral;
