----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/17/2018 04:32:28 PM
-- Design Name: Lab 3
-- Module Name: Task_One - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task_One is
 Port ( 
       input_A, input_B, CIN, C0, C1, C2, C3, Sel0, Sel1, Sel2, Sel3 : in STD_LOGIC;
       SUM, COUT, Y0, Y1, Y2, Y3 : out STD_LOGIC 
        );
end Task_One;

architecture Behavioral of Task_One is

    component One_Bit_Adder 
        port (
              input_a, input_b, carry_in : in STD_LOGIC;
              sum, carry_out : out STD_LOGIC
                );
    end component;
    
    component Two_Line_Mux
        port (
               input_a, input_b, input_select : in STD_LOGIC;
               output : out STD_LOGIC
                );
    end component;

    signal carry_out, mux_out0, mux_out1, mux_out2 : STD_LOGIC;
begin

    A0: One_Bit_Adder port map (
            input_a => input_A,
            input_b => input_B,
            carry_in => CIN,
            sum => SUM,
            carry_out => carry_out
        );

    COUT <= carry_out;
    
    M0: Two_Line_Mux port map (
        input_a => carry_out,
        input_b => C0,
        input_select => Sel0,
        output => mux_out0
    );
    
    Y0 <= mux_out0;
    
    M1: Two_Line_Mux port map (
        input_a => mux_out0,
        input_b => C1,
        input_select => Sel1,
        output => mux_out1
    );
    
    Y1 <= mux_out1;
    
    M2: Two_Line_Mux port map (
        input_a => mux_out1,
        input_b => C2,
        input_select => Sel2,
        output => mux_out2
    );
    
    Y2 <= mux_out2;
        
    M3: Two_Line_Mux port map (
        input_a => mux_out2,
        input_b => C3,
        input_select => Sel3,
        output => Y3
    );        

end Behavioral;
