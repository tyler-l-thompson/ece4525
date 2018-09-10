----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/10/2018 11:43:54 AM
-- Project Name: Lab2 - Task2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_Bit_Adder is
    Port ( 
        input_a0, input_a1, input_a2, input_a3, input_b0, input_b1, input_b2, input_b3, carry_in : in STD_LOGIC;
        sum0, sum1, sum2, sum3, carry_out : out STD_LOGIC
    );
end Four_Bit_Adder;

architecture Behavioral of Four_Bit_Adder is

component One_Bit_Adder
    port (
        input_a, input_b, carry_in: in STD_LOGIC;
        sum, carry_out: out STD_LOGIC
    );
end component;

signal c0, c1, c2, c3: STD_LOGIC:='0';

begin

    A0: One_Bit_Adder port map (
            input_a => input_a0,
            input_b => input_b0,
            carry_in => '0',
            sum => sum0,
            carry_out => c0
        );
        
    A1: One_Bit_Adder port map (
            input_a => input_a1,
            input_b => input_b1,
            carry_in => c0,
            sum => sum1,
            carry_out => c1
        );

    A2: One_Bit_Adder port map (
            input_a => input_a2,
            input_b => input_b2,
            carry_in => c1,
            sum => sum2,
            carry_out => c2
        );
        
    A3: One_Bit_Adder port map (
            input_a => input_a3,
            input_b => input_b3,
            carry_in => c2,
            sum => sum3,
            carry_out => c3
         );

    carry_out <= c0 or c1 or c2 or c3;

end Behavioral;
