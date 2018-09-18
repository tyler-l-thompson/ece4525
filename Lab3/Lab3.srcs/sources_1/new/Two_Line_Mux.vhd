----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/17/2018 01:47:58 PM
-- Design Name: Lab 3
-- Module Name: Two_Line_Mux - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Two_Line_Mux is
 Port ( 
        input_a, input_b, input_select : in STD_LOGIC;
        output : out STD_LOGIC
        );
end Two_Line_Mux;

architecture Behavioral of Two_Line_Mux is

begin
    output <= (input_a and not input_select) or (input_b and input_select);
end Behavioral;
