----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/02/2018 05:27:38 PM
-- Design Name: Lab5
-- Module Name: SRAM_Bus_Controller - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SRAM_Bus_Controller is
    Port ( CLK : in STD_LOGIC;
           START : in STD_LOGIC;
           RW : in STD_LOGIC;
           READY : in STD_LOGIC;
           CE : out STD_LOGIC;
           READ : out STD_LOGIC;
           WRITE : out STD_LOGIC;
           READY_CTL : out STD_LOGIC;
           D0 : inout STD_LOGIC;
           D1 : inout STD_LOGIC;
           D2 : inout STD_LOGIC;
           D3 : inout STD_LOGIC;
           D4 : inout STD_LOGIC;
           D5 : inout STD_LOGIC;
           D6 : inout STD_LOGIC;
           D7 : inout STD_LOGIC;
           A0 : out STD_LOGIC;
           A1 : out STD_LOGIC;
           A2 : out STD_LOGIC;
           A3 : out STD_LOGIC;
           A4 : out STD_LOGIC);
end SRAM_Bus_Controller;

architecture Behavioral of SRAM_Bus_Controller is

begin


end Behavioral;
