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

    component Twos_Complementor
        Port ( P0, P1, P2, P3, P4, P5, P6, P7, EN : in STD_LOGIC;
               Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7: out STD_LOGIC );
    end component;

    signal less_than, equal, greater_than, C0, C1, C2, C3, C4, C5, C6, C7, F0, F1, F2, F3, F4, F5, F6, F7, COMP_EN, GT, LT  : STD_LOGIC;

begin
    
    COMP_EN <= not LA; -- complementor enable

    TC0 : Twos_Complementor port map (
        P0 => P0,
        P1 => P1,
        P2 => P2,
        P3 => P3,
        P4 => P4,
        P5 => P5,
        P6 => P6,
        P7 => P7,
        EN => COMP_EN,
        Q0 => C0,
        Q1 => C1,
        Q2 => C2,
        Q3 => C3,
        Q4 => C4,
        Q5 => C5,
        Q6 => C6,
        Q7 => C7
    );
    
    TC1 : Twos_Complementor port map (
            P0 => Q0,
            P1 => Q1,
            P2 => Q2,
            P3 => Q3,
            P4 => Q4,
            P5 => Q5,
            P6 => Q6,
            P7 => Q7,
            EN => COMP_EN,
            Q0 => F0,
            Q1 => F1,
            Q2 => F2,
            Q3 => F3,
            Q4 => F4,
            Q5 => F5,
            Q6 => F6,
            Q7 => F7
        );

    COMP0 : Four_Bit_Magnitude_Comparator port map (
        input_a0 => C0,
        input_a1 => C1,
        input_a2 => C2,
        input_a3 => C3,
        input_b0 => F0,
        input_b1 => F1,
        input_b2 => F2,
        input_b3 => F3,
        input_less_than => P_LT_QIN, 
        input_equal => '0',
        input_greater_than => P_GT_QIN, 
        output_less_than => less_than,
        output_equal => equal,
        output_greater_than => greater_than
     );    
     
     COMP1 : Four_Bit_Magnitude_Comparator port map (
         input_a0 => C4,
         input_a1 => C5,
         input_a2 => C6,
         input_a3 => C7,
         input_b0 => F4,
         input_b1 => F5,
         input_b2 => F6,
         input_b3 => F7,
         input_less_than => less_than, 
         input_equal => equal,
         input_greater_than => greater_than, 
         output_less_than => LT,
         output_equal => open,
         output_greater_than => GT
      );
      
      P_GT_QOUT <= (GT OR NOT LA) AND (NOT GT OR LA); -- invert output if LA is low for algrithmic comparision
      P_LT_QOUT <= (LT OR NOT LA) AND (NOT LT OR LA);
    
end Behavioral;
