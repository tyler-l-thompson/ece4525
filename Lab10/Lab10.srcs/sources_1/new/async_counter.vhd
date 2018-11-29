----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/27/2018 12:46:42 PM
-- Design Name: Lab 10
-- Module Name: async_counter - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity async_counter is
    Port ( 
        CKA, R0, R5 : in STD_LOGIC;
        Y1, Y2, Y3, Y4 : inout STD_LOGIC;
        QA, QB, QC : out STD_LOGIC
    );
end async_counter;

architecture Behavioral of async_counter is

begin

    Y1 <= (( (Y1 and not Y2) or
     (Y1 and not Y4 and CKA) or 
     (Y2 and not Y3 and not Y4 and not CKA) or 
     (Y1 and not Y3 and not Y4) ) and (not R0 and not R5));
    
    Y2 <= (( (Y2 and not Y4 and not CKA) or 
    (CKA and Y1 and Y3 and not Y4) or
    (Y1 and Y2 and Y3 and not Y4) or
    (not Y1 and not Y3 and not Y4 and CKA) or
    (not Y1 and Y2 and not Y3 and not Y4) ) and (not R0 and not R5));
    
    Y3 <= ((( (Y3 and not Y4) or
     (Y1 and not Y2 and Y3) or 
     (Y1 and not Y2 and Y4 and CKA) or 
     (not Y1 and not Y2 and Y3 and not CKA) ) and (not R0 and not R5)) or R5);
     
    Y4 <= ((( (not Y2 and Y4 and CKA) or
    (not Y1 and not Y2 and Y3 and Y4) or
    (Y1 and not Y2 and not Y3 and Y4) or 
    (Y1 and not Y2 and not Y3 and not CKA) or 
    (not Y1 and not Y2 and Y3 and not CKA) ) and (not R0 and not R5)) or R5);
    
    QA <= ( (not Y1 and not Y2 and Y3) or 
    (not Y1 and Y2 and Y3 and not Y4) or
    (not CKA and Y2 and Y3 and not Y4) or
    (not Y1 and Y3 and not Y4) or
    (CKA and not Y1 and not Y2 and Y4) );
    
    QB <= ( (Y1 and not Y2 and not CKA) or
    (Y4 and not Y2 and Y1) or 
    (Y1 and not Y2 and Y3) or
    (Y1 and Y3 and not Y4 and CKA));
    
    QC <= ( (Y1 and not Y4 and CKA) or 
    (not Y1 and not Y2 and Y4 and CKA) or 
    (not Y1 and not Y2 and Y3 and not CKA) or 
    (Y2 and not Y3 and not Y4 and not CKA) or 
    (Y1 and not Y2 and Y3 and not CKA) or 
    (not Y1 and not Y2 and Y3 and Y4) or 
    (Y1 and Y2 and not Y3 and not Y4) or 
    (Y1 and not Y2 and Y3 and not Y4) );

end Behavioral;
