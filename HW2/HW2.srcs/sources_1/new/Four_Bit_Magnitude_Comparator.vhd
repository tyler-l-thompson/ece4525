----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/12/2018 12:22:44 PM
-- Module Name: Four_Bit_Magnitude_Comparator - Behavioral
-- Project Name: HW2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_Bit_Magnitude_Comparator is
  Port ( 
    input_a0, input_a1, input_a2, input_a3, input_b0, input_b1, input_b2, input_b3, input_less_than, input_equal, input_greater_than : in STD_LOGIC;
    output_less_than, output_equal, output_greater_than : out STD_LOGIC
  );
end Four_Bit_Magnitude_Comparator;

architecture Behavioral of Four_Bit_Magnitude_Comparator is

    component One_Bit_Magnitude_Comparator
        port (
            input_a, input_b : in STD_LOGIC;
            output_equal, output_nand : out STD_LOGIC
        );
    end component;
    
    component Six_Way_And
        port (
              input_0, input_1, input_2, input_3, input_4, input_5 : in STD_LOGIC;
              output : out STD_LOGIC
              );
    end component;

    signal equal_0, equal_1, equal_2, equal_3, com_nand0, com_nand1, com_nand2, com_nand3, equal_32, equal_321, equal_3210, equal_3210in, A00, A01, A02, A03, A04, A05, A10, A11, A12, A13, A14, A15 : STD_LOGIC;
begin

    C3 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a3,
        input_b => input_b3,
        output_equal => equal_3,
        output_nand => com_nand3
    );

    C2 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a2,
        input_b => input_b2,
        output_equal => equal_2,
        output_nand => com_nand2
    );
    
    C1 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a1,
        input_b => input_b1,
        output_equal => equal_1,
        output_nand => com_nand1
    );
    
    C0 : One_Bit_Magnitude_Comparator port map (
        input_a => input_a0,
        input_b => input_b0,
        output_equal => equal_0,
        output_nand => com_nand0
    );
    
    equal_32 <= equal_3 and equal_2;
    equal_321 <= equal_32 and equal_1;
    equal_3210 <= equal_321 and equal_0;
    equal_3210in <= equal_3210 and input_equal;
    output_equal <= equal_3210in;
    
    -- Greater than gate mapping
    A00 <= com_nand3 nand input_b3;
    A01 <= (not (com_nand2 and input_b2 and equal_3));
    A02 <= (not (com_nand1 and input_b1 and equal_32));
    A03 <= (not (input_b0 and  equal_321 and com_nand0));
    A04 <= equal_3210 nand input_less_than;
    A05 <= not equal_3210in;
    
    -- Less than gate mapping
    A10 <= not equal_3210in;
    A11 <= equal_3210 nand input_greater_than;
    A12 <= (not (equal_321 and com_nand0 and input_a0));
    A13 <= (not (equal_32 and com_nand1 and input_a1));
    A14 <= (not (equal_3 and input_a2 and com_nand2));
    A15 <= com_nand3 nand input_a3;
    
    -- Greater than gate
    A0 : Six_Way_And port map (
       input_0 => A00,
       input_1 => A01,
       input_2 => A02,
       input_3 => A03,
       input_4 => A04,
       input_5 => A05,
       output => output_greater_than
   );
   
   -- Less than gate
   A1 : Six_Way_And port map (
      input_0 => A10,
      input_1 => A11,
      input_2 => A12,
      input_3 => A13,
      input_4 => A14,
      input_5 => A15,
      output => output_less_than
  );
    
end Behavioral;
