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
        Y1, Y2, Y3 : inout STD_LOGIC;
        QA, QB, QC : out STD_LOGIC
    );
end async_counter;

architecture Behavioral of async_counter is

begin

Y1 <= ((Y2 and not Y3 and not CKA) or (Y1 and Y2 and CKA) or (Y1 and Y2 and not Y3));

Y2 <= ((Y1 and Y2) or (Y2 and CKA) or (Y2 and not Y3 and not CKA) or (not Y1 and not Y3 and not CKA) or (not Y1 and Y2 and not Y3));

Y3 <= ((Y2 and Y3) or (Y1 and Y2 and not CKA) or (not Y1 and Y3 and CKA));

QA <= (((not Y1 and not Y3 and not CKA) or (Y2 and not Y3 and not CKA) or (not Y1 and Y2 and not CKA) or (not Y1 and Y2 and not Y3) or (not Y1 and not Y2 and Y3 and CKA) or (Y1 and Y2 and Y3 and CKA)) or R5) nor R0;

QB <= (((Y1 and Y2 and CKA) or (Y1 and Y2 and not Y3)) nor (R5 or R0));

QC <= (((Y2 and Y3 and not CKA) or (not Y1 and Y2 and Y3) or (not Y1 and Y3 and CKA)) or R5) nor R0;

end Behavioral;
