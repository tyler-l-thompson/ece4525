----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/13/2018 12:37:20 PM
-- Design Name: Lab 9
-- Module Name: task_one - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_one is
    Port ( X1, X2 : in STD_LOGIC;
           Y1, Y2, Y3, Y4 : inout STD_LOGIC;
           Z : out STD_LOGIC);
end task_one;

architecture Behavioral of task_one is

begin

    Y1 <= ((Y1 and Y2 and Y4 and not X1) or (X1 and X2 and Y2 and Y3 and Y4) or (X1 and X2 and Y1 and Y2 and Y4));
    
    Y2 <= ((not X1 and not X2 and not Y1 and Y4) or (not X2 and Y2 and Y4) or (not X1 and Y2 and not Y3) or (not X1 and Y2 and Y4) or (Y2 and Y3 and Y4) or (X1 and Y1 and Y2 and Y4) or (not X1 and X2 and not Y1 and Y3 and Y4) ); 

    Y3 <= ((not X1 and X2 and not Y1 and not Y2 and Y4) or (not X1 and Y2 and Y3 and Y4) or (not X1 and X2 and not Y1 and Y2 and Y4) or (X2 and not Y1 and Y2 and Y3 and Y4) );
    
    Y4 <= ((not Y1 and not X1 and not X2 and not Y3) or (not Y1 and Y4 and not X2) or (not Y1 and not Y2 and not Y3 and X2) or (not Y1 and Y4 and X2) or (Y2 and Y4 and X1) or (not Y1 and Y2 and Y4 and X2));
    
    Z <= (X1 and not Y1 and not Y2 and Y4) or (X1 and Y1 and Y2 and Y4);
    
end Behavioral;
