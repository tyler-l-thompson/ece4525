----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/10/2018 11:43:54 AM
-- Project Name: Lab2 - Task1
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity One_Bit_Adder is
  Port ( 
      input_a, input_b, carry_in: in STD_LOGIC;
      sum, carry_out: out STD_LOGIC
  );
end One_Bit_Adder;

architecture Behavioral of One_Bit_Adder is
begin
    sum  <= input_a xor input_b xor carry_in; 
    carry_out <= (input_a and input_b) or (input_a and carry_in) or (input_b and carry_in);
end Behavioral;
