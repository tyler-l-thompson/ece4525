----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/10/2018 11:42:50 AM
-- Design Name: 
-- Module Name: Four_Bit_Adder - Behavioral
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

entity Four_Bit_Adder is
    Port ( 
        input_a0, input_a1, input_a2, input_a3, input_b0, input_b1, input_b2, input_b3, carry_in : in STD_LOGIC;
        sum0, sum1, sum2, sum3, carry_out : out STD_LOGIC
    );
end Four_Bit_Adder;

architecture Behavioral of Four_Bit_Adder is

begin


end Behavioral;
