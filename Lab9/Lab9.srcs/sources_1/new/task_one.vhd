----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/13/2018 12:37:20 PM
-- Design Name: Lab 9
-- Module Name: task_one - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_one is
    Port ( X1, X2, RESET : in STD_LOGIC;
           Y1, Y2, Y3 : inout STD_LOGIC;
           Z : out STD_LOGIC);
end task_one;

architecture Behavioral of task_one is

begin

    Y1 <= ((not X1 and X2 and not Y1 and Y2 and Y3) or (not X1 and X2 and Y1 and not Y2 and not Y3)) and RESET;
    
    Y2 <= ((X1 and X2 and not Y1 and not Y3) or (X1 and not Y1 and Y2 and not Y3) or (X1 and X2 and not Y1 and Y3) or (X1 and X2 and Y1 and not Y2 and not Y3)) and RESET; 

    Y3 <= ((not X1 and X2 and not Y1 and not Y3) or (not X1 and not Y1 and not Y2 and Y3) or (X2 and not Y1 and not Y2 and Y3) or (X1 and X2 and not Y1 and Y3)) and RESET;
    
    Z <= (X1 and not Y1 and Y2 and not Y3) or (X1 and X2 and not Y1 and Y2 and Y3);
    
end Behavioral;
