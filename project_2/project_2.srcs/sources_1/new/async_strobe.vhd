----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/28/2018 04:14:44 PM
-- Design Name: 
-- Module Name: async_strobe - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity async_strobe is
  Port ( 
    STB, RD, RESET : in STD_LOGIC;
   -- Y1, Y2, Y3 : inout STD_LOGIC;
    IBF, INTR : out STD_LOGIC
  );
end async_strobe;

architecture Behavioral of async_strobe is

    signal Y1, Y2, Y3 : STD_LOGIC := '0';

begin

    Y1 <= (((STB and RD and Y2 and Y3) or 
          (STB and Y1 and Y2 and not Y3) or 
          (not STB and Y1 and Y2 and not Y3) or
          (STB and RD and Y1 and Y2)) and not RESET);
          
    Y2 <= ((RD and Y2) or
          (not STB and not Y1 and Y2) or
          (not STB and RD and not Y1 and Y3) or
          (STB and RD and not Y1 and not Y3) or
          (not STB and not RD and not Y1 and not Y3) or
          (not STB and not RD and not Y2 and not Y3)) or RESET;
          
    Y3 <= (((not STB and RD and not Y1) or
          (not STB and RD and Y2) or
          (STB and not Y1 and Y2 and Y3) or
          (RD and not Y1 and Y2 and Y3)) and not RESET);
          
    IBF <= (((STB and not RD and not Y1) or
           (not STB and RD and not Y1) or
           (RD and Y2 and Y3) or
           (STB and not Y1 and Y2 and Y3) or
           (not STB and RD and Y2) or
           (RD and Y1 and Y2) or
           (STB and Y1 and Y2 and not Y3) or
           (STB and not RD and Y2 and not Y3) or
           (STB and not RD and Y1 and not Y3)) and not RESET);
           
    INTR <= (((STB and RD and Y2 and Y3) or
            (STB and RD and Y1 and Y2)) and not RESET);


end Behavioral;
