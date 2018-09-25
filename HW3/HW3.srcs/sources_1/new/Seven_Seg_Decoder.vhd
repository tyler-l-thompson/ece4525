----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/24/2018 06:28:14 PM
-- Design Name: HW3
-- Module Name: Seven_Seg_Decoder - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Seven_Seg_Decoder is
    Port ( input_a : in STD_LOGIC;
           input_b : in STD_LOGIC;
           input_c : in STD_LOGIC;
           input_d : in STD_LOGIC;
           input_lt : in STD_LOGIC;
           output_a : out STD_LOGIC;
           output_b : out STD_LOGIC;
           output_c : out STD_LOGIC;
           output_d : out STD_LOGIC;
           output_e : out STD_LOGIC;
           output_f : out STD_LOGIC;
           output_g : out STD_LOGIC);
end Seven_Seg_Decoder;

architecture Behavioral of Seven_Seg_Decoder is

    

begin

    output_a <= not((not input_c or input_a) and (not input_d or not input_b) and (input_d or input_c or input_b or not input_a)) and input_lt;
    output_b <= not((not input_d or not input_b) and (not input_c or input_b or not input_a) and (not input_c or not input_b or input_a)) and input_lt;
    output_c <= not((not input_d or not input_c) and (input_c or not input_b or input_a)) and input_lt;
    output_d <= not((input_c or input_b or not input_a) and (not input_c or input_b or input_a) and (not input_c or not input_b or not input_a)) and input_lt;
    output_e <= not((not input_a) and (not input_c or input_b)) and input_lt;
    output_f <= not((input_c or not input_b) and (not input_b or not input_a) and (input_d or input_c or not input_a)) and input_lt;
    output_g <= not((input_d or input_c or input_b) and (not input_c or not input_b or not input_a)) and input_lt;

end Behavioral;
