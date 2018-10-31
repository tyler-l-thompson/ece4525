----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2018 10:30:19 AM
-- Design Name: 
-- Module Name: task_one_read - Behavioral
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

entity task_one_read is
    Port ( R_cmd : in STD_LOGIC; -- active low
           RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Mux_sel : out STD_LOGIC;
           CAS : out STD_LOGIC; -- active low
           RAS : out STD_LOGIC; -- active low
           W : out STD_LOGIC; -- active low
           CLKOUT : out STD_LOGIC);
end task_one_read;

architecture Behavioral of task_one_read is

    type state_type is ( idle, r1, r2, r3, r4);
    
    signal present_state, next_state: state_type := idle;

begin

    read_cycle: process(present_state)
    begin
    
        case present_state is
        when idle =>
            Mux_sel <= '0';
            CAS <= '1';
            RAS <= '1';
            W <= '1';
            
        
        when others =>
            Mux_sel <= '0';
            CAS <= '1';
            RAS <= '1';
            W <= '1';
        end case;
    end process read_cycle;


    clk_process: process(CLK, RESET, next_state)
    begin
        CLKOUT <= CLK;
        if ( RESET = '1' ) then
            present_state <= idle;
        else
            if (CLK'event and CLK = '1') then
                present_state <= next_state;
            end if;
        end if;
    end process clk_process;


end Behavioral;
