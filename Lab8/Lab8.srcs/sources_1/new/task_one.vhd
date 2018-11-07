----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/07/2018 12:38:28 PM
-- Design Name: Lab 8
-- Module Name: task_one - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_one is
    Port ( D : inout STD_LOGIC_VECTOR (7 downto 0);
           Pout : out STD_LOGIC_VECTOR (7 downto 0);
           Pin : in STD_LOGIC_VECTOR (7 downto 0);
           OUTT : out STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           RDY : out STD_LOGIC;
           RD : in STD_LOGIC;
           WR : in STD_LOGIC;
           A0 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           CS : in STD_LOGIC;
           INP : in STD_LOGIC);
end task_one;

architecture Behavioral of task_one is
    type state_type is ( idle, s1, s2, s3, s4, s5 );
    
    signal present_state, next_state: state_type := idle;
    signal Pin_reg, Pout_reg : std_logic_vector(7 downto 0) := "00000000";
    
begin
--    comb_process: process(CS, RD, WR, A0, A1)
--    begin
--        case present_state is
--        when idle =>
--            D <= "ZZZZZZZZ";
--            OUTT <= '1';
--            RDY <= '1';
            
--            if ( CS = '0' ) then
--                next_state <= s1;
--            elsif ( CS = '1' ) then
--                next_state <= idle;
--            end if;
            
            
--        when others =>
--            next_state <= idle;
            
--        end case;
--    end process comb_process;

Pout_reg_process: process(WR, CS, A1, A0, D, RESET)
begin
    if ( RESET = '1' ) then
        Pout_reg <= "00000000";
    elsif rising_edge(WR) then
        if ( CS = '0' and A1 = '0' and A0 = '0') then
            Pout_reg <= D;
        end if;
     end if;   
end process Pout_reg_process;

Pin_reg_process: process(INP, RESET)
begin
    if ( RESET = '1' ) then
        Pin_reg <= "00000000";
    elsif rising_edge(INP) then
            Pout_reg <= D;
     end if;   
end process Pin_reg_process;

 clk_process: process(CLK, RESET, next_state)
    begin
        if ( RESET = '1' ) then
            present_state <= idle;
        else
            if (CLK'event and CLK = '1') then
                present_state <= next_state;
            end if;
            
        end if;
    end process clk_process;

end Behavioral;
