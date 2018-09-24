----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/24/2018 01:38:39 PM
-- Design Name: Lab4
-- Module Name: Eight_Bit_Magnitude_Comparator - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Eight_Bit_Magnitude_Comparator is
    Port ( LA : in STD_LOGIC;
           P_GT_QIN : in STD_LOGIC;
           P_LT_QIN : in STD_LOGIC;
           P0 : in STD_LOGIC;
           P1 : in STD_LOGIC;
           P2 : in STD_LOGIC;
           P3 : in STD_LOGIC;
           P4 : in STD_LOGIC;
           P5 : in STD_LOGIC;
           P6 : in STD_LOGIC;
           P7 : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           Q1 : in STD_LOGIC;
           Q2 : in STD_LOGIC;
           Q3 : in STD_LOGIC;
           Q4 : in STD_LOGIC;
           Q5 : in STD_LOGIC;
           Q6 : in STD_LOGIC;
           Q7 : in STD_LOGIC;
           P_GT_QOUT : out STD_LOGIC;
           P_LT_QOUT : out STD_LOGIC);
end Eight_Bit_Magnitude_Comparator;

architecture Behavioral of Eight_Bit_Magnitude_Comparator is

    component Four_Bit_Magnitude_Comparator
      Port ( input_a0, input_a1, input_a2, input_a3, input_b0, input_b1, input_b2, input_b3, input_less_than, input_equal, input_greater_than : in STD_LOGIC;
             output_less_than, output_equal, output_greater_than : out STD_LOGIC);
    end component;

    signal less_than, equal, greater_than : STD_LOGIC;

begin

    COMP0 : Four_Bit_Magnitude_Comparator port map (
        input_a0 => P0,
        input_a1 => P1,
        input_a2 => P2,
        input_a3 => P3,
        input_b0 => Q0,
        input_b1 => Q1,
        input_b2 => Q2,
        input_b3 => Q3,
        input_less_than => P_LT_QIN, 
        input_equal => '0',
        input_greater_than => P_GT_QIN, 
        output_less_than => less_than,
        output_equal => equal,
        output_greater_than => greater_than
     );    
     
     COMP1 : Four_Bit_Magnitude_Comparator port map (
         input_a0 => P4,
         input_a1 => P5,
         input_a2 => P6,
         input_a3 => P7,
         input_b0 => Q4,
         input_b1 => Q5,
         input_b2 => Q6,
         input_b3 => Q7,
         input_less_than => less_than, 
         input_equal => equal,
         input_greater_than => greater_than, 
         output_less_than => P_LT_QOUT,
         output_equal => open,
         output_greater_than => P_GT_QOUT
      );
    
end Behavioral;
