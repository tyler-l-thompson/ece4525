----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/24/2018 01:38:39 PM
-- Design Name: 
-- Module Name: Eight_Bit_Magnitude_Comparator - Behavioral
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

    component One_Bit_Equator
        port ( input_a : in STD_LOGIC;
               input_b : in STD_LOGIC;
               output : out STD_LOGIC);  
    end component;

    signal equal_0, equal_1, equal_2, equal_3, equal_4, equal_5, equal_6, equal_7, MSB : STD_LOGIC;

begin

    E0 : One_Bit_Equator port map (
        input_a => P0,
        input_b => Q0,
        output => equal_0
    );
    
    E1 : One_Bit_Equator port map (
        input_a => P1,
        input_b => Q1,
        output => equal_1
    );
    
    E2 : One_Bit_Equator port map (
        input_a => P2,
        input_b => Q2,
        output => equal_2
    );
    
    E3 : One_Bit_Equator port map (
        input_a => P3,
        input_b => Q3,
        output => equal_3
    );
    
    E4 : One_Bit_Equator port map (
        input_a => P4,
        input_b => Q4,
        output => equal_4
    );
        
    E5 : One_Bit_Equator port map (
        input_a => P5,
        input_b => Q5,
        output => equal_5
    );
            
    E6 : One_Bit_Equator port map (
        input_a => P6,
        input_b => Q6,
        output => equal_6
    );
                
     E7 : One_Bit_Equator port map (
        input_a => P7,
        input_b => Q7,
        output => equal_7
    );

    MSB <= 
    
end Behavioral;
