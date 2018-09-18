----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/13/2018 10:23:58 AM
-- Module Name: Six_Way_And - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Six_Way_And is
  Port ( 
        input_0, input_1, input_2, input_3, input_4, input_5 : in STD_LOGIC;
        output : out STD_LOGIC
        );
end Six_Way_And;

architecture Behavioral of Six_Way_And is

begin
    output <= input_0 and input_1 and input_2 and input_3 and input_4 and input_5;
end Behavioral;
