----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/17/2018 04:55:23 PM
-- Design Name: Lab 3 Task 2 Part 2 - bridge fault
-- Module Name: Task_2 - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task_Two_Part_Two is
  Port ( 
         A, B, C : in STD_LOGIC;
         F, F_alpha : out STD_LOGIC
         );
end Task_Two_Part_Two;

architecture Behavioral of Task_Two_Part_Two is

begin
    F <= (A and not B) or (not B and C) or (not A and C);
    F_alpha <= (A and not B) or (A and not C) or (not A and Not C); 
    -- bridge fault detection for B=C
end Behavioral;
