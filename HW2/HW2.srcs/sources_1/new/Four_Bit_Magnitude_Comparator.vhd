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

component One_Bit_Magnitude_Comparator
    port (
        input_a, input_b, input_less_than, input_equal, input_greater_than : in STD_LOGIC;
        output_less_than, output_equal, output_greater_than : out STD_LOGIC
    );
end component;

signal less_than0, less_than1, less_than2, less_than3, equal0, equal1, equal2, equal3, greater_than0, greater_than1, greater_than2, greater_than3 : STD_LOGIC:='1';

begin

    C0 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a0,
        input_b => input_b0,
        input_less_than => '1',
        input_equal => '1',
        input_greater_than => '1',
        output_less_than => less_than0,
        output_equal => equal0,
        output_greater_than => greater_than0
    );

    C1 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a1,
        input_b => input_b1,
        input_less_than => less_than0,
        input_equal => equal0,
        input_greater_than => greater_than0,
        output_less_than => less_than1,
        output_equal => equal1,
        output_greater_than => greater_than1
    );
    
    C2 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a2,
        input_b => input_b2,
        input_less_than => less_than1,
        input_equal => equal1,
        input_greater_than => greater_than1,
        output_less_than => less_than2,
        output_equal => equal2,
        output_greater_than => greater_than2
    );
    
    C3 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a3,
        input_b => input_b3,
        input_less_than => less_than2,
        input_equal => equal2,
        input_greater_than => greater_than2,
        output_less_than => less_than3,
        output_equal => equal3,
        output_greater_than => greater_than3
    );
    
    output_less_than <= less_than3 and input_less_than;
    output_equal <= equal3 and input_equal;
    output_greater_than <= greater_than3 and input_greater_than;

end Behavioral;
