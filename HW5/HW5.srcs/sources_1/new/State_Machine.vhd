----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/09/2018 09:59:15 AM
-- Design Name: HW5
-- Module Name: State_Machine - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity State_Machine is
  Port ( A, B, RESET, CLK : in STD_LOGIC; -- Input from switches / Clock
         state_status : out STD_LOGIC_VECTOR(2 downto 0); -- Number correleting to which state we are in
         state_output : out STD_LOGIC_VECTOR(1 downto 0) ); -- The output of the current state
end State_Machine;

architecture Behavioral of State_Machine is

    type state_type is (s0, s1, s2, s3, s4, s5);

    signal present_state, next_state: state_type := s0;

begin

    state_process: process(present_state, A, B)
    begin
        case present_state is
                    
            -- ### STATE S0 ###
            when s0 =>
                state_status <= "000";
                state_output <= "00";
            
            if (B = '0') then
                next_state <= s0;
            elsif (B = '1') then
                if (A = '0') then
                    next_state <= s2;
                elsif (A = '1') then
                    next_state <= s1;
                end if;
            end if;
            
            -- ### STATE S1 ###
            when s1 =>                
                state_status <= "001";
                state_output <= "01"; 
                
            if (B = '0') then
                if (A = '0') then
                    next_state <= s3;
                elsif (A = '1') then
                    next_state <= s2;
                end if;
            elsif (B = '1') then
                if (A = '0') then
                    next_state <= s1;
                elsif (A = '1') then
                    next_state <= s4;
                end if;
            end if;
                
            -- ### STATE S2 ###
            when s2 =>                
                state_status <= "010";
                state_output <= "10"; 
            
            if (B = '0') then
                if (A = '0') then
                    next_state <= s0;
                elsif (A = '1') then
                    next_state <= s5;
                end if;
            elsif (B = '1') then
                if (A = '0') then
                    next_state <= s3;
                elsif (A = '1') then
                    next_state <= s2;
                end if;
            end if;
            
            -- ### STATE S3 ###    
            when s3 =>                
                state_status <= "011";    
                state_output <= "00"; 
            
            if (B = '0') then
                if (A = '0') then
                    next_state <= s4;
                elsif (A = '1') then
                    next_state <= s0;
                end if;
            elsif (B = '1') then
                next_state <= s3;
            end if;
            
            -- ### STATE S4 ###    
            when s4 =>                   
                state_status <= "100";    
                state_output <= "10"; 
                
            if (B = '0') then
                if (A = '0') then
                    next_state <= s3;
                elsif (A = '1') then
                    next_state <= s0;
                end if;
            elsif (B = '1') then
                if (A = '0') then
                    next_state <= s5;
                elsif (A = '1') then
                    next_state <= s4;
                end if;
            end if;
            
            -- ### STATE S5 ###
            when s5 =>                
                state_status <= "101";
                state_output <= "11";  
                
            if (B = '0') then
                if (A = '0') then
                    next_state <= s1;
                elsif (A = '1') then
                    next_state <= s5;
                end if;
            elsif (B = '1') then
                if (A = '0') then
                    next_state <= s4;
                elsif (A = '1') then
                    next_state <= s3;
                end if;
            end if;   
            
            when others => 
                next_state <= s0;
                state_status <= "000";
                state_output <= "00";
        end case;
    end process state_process;

    clk_process: process
    begin
        wait until (CLK'event and CLK = '1');
        if RESET = '0' then
            present_state <= s0; 
        else 
            present_state <= next_state;
        end if;
    end process clk_process;


end Behavioral;
