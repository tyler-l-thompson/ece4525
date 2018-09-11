----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/05/2018 06:37:04 PM
-- Design Name: 
-- Module Name: Full_Adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder is
  Port ( A: in STD_LOGIC;
         B: in STD_LOGIC;
         Cin: in STD_LOGIC;
         S: out STD_LOGIC;
         Cout: out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
signal w1, w2, w3: std_logic;
begin
    w1 <= A xor B;
    w2 <= Cin and w1;
    w3 <= A and B;
    S <= w1 xor Cin;
    Cout <= w2 or w3;
end Behavioral;
