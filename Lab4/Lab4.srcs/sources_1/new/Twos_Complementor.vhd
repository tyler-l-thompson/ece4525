----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/26/2018 06:45:04 PM
-- Design Name: Lab4
-- Module Name: Twos_Complementor - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Twos_Complementor is
    Port ( P0 : in STD_LOGIC;
           P1 : in STD_LOGIC;
           P2 : in STD_LOGIC;
           P3 : in STD_LOGIC;
           P4 : in STD_LOGIC;
           P5 : in STD_LOGIC;
           P6 : in STD_LOGIC;
           P7 : in STD_LOGIC;
           EN : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC;
           Q5 : out STD_LOGIC;
           Q6 : out STD_LOGIC;
           Q7 : out STD_LOGIC);
end Twos_Complementor;

architecture Behavioral of Twos_Complementor is

    component Four_Bit_Adder 
        Port ( input_a0, input_a1, input_a2, input_a3, input_b0, input_b1, input_b2, input_b3, carry_in : in STD_LOGIC;
               sum0, sum1, sum2, sum3, carry_out : out STD_LOGIC );
    end component;
    
    signal carry, input_enable, C0, C1, C2, C3, C4, C5, C6, C7 : STD_LOGIC;
    
begin

    C0 <= (P0 or EN) and (not P0 or not EN); -- invert signal if EN if high
    C1 <= (P1 or EN) and (not P1 or not EN);
    C2 <= (P2 or EN) and (not P2 or not EN);
    C3 <= (P3 or EN) and (not P3 or not EN);
    C4 <= (P4 or EN) and (not P4 or not EN);
    C5 <= (P5 or EN) and (not P5 or not EN);
    C6 <= (P6 or EN) and (not P6 or not EN);
    C7 <= (P7 or EN) and (not P7 or not EN);

    input_enable <= '1' and EN; -- add 1 to input if EN is high
    
    A0 : Four_Bit_Adder port map (
        input_a0 => C0,
        input_a1 => C1,
        input_a2 => C2,
        input_a3 => C3,
        input_b0 => input_enable,
        input_b1 => '0',
        input_b2 => '0',
        input_b3 => '0',
        carry_in => '0',
        sum0 => Q0,
        sum1 => Q1,
        sum2 => Q2,
        sum3 => Q3,
        carry_out => carry
    );

    A1 : Four_Bit_Adder port map (
        input_a0 => C4,
        input_a1 => C5,
        input_a2 => C6,
        input_a3 => C7,
        input_b0 => '0',
        input_b1 => '0',
        input_b2 => '0',
        input_b3 => '0',
        carry_in => carry,
        sum0 => Q4,
        sum1 => Q5,
        sum2 => Q6,
        sum3 => Q7,
        carry_out => open
    );

end Behavioral;
