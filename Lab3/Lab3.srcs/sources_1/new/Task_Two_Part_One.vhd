----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 09/17/2018 04:55:23 PM
-- Design Name: Lab 3 Task 2 Part 1 - stuck at 0
-- Module Name: Task_2 - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Task_Two_Part_One is
  Port ( 
         A, B, C : in STD_LOGIC;
         F, F_alpha : out STD_LOGIC
         );
end Task_Two_Part_One;

architecture Behavioral of Task_Two_Part_One is

begin
    F <= (A and not B) or (not B and C) or (not A and C);
    F_alpha <= C; 
    -- stuck at 0 fault detection for A=0
    -- Test vectors
    -- A B C F F_alpha
    -- 1 1 1 0 1
    -- 1 0 0 1 0
end Behavioral;
