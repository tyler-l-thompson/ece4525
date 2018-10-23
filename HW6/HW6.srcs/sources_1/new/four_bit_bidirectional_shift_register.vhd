----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/23/2018 12:27:40 PM
-- Design Name: HW6
-- Module Name: four_bit_bidirectional_shift_register - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity four_bit_bidirectional_shift_register is
    Port ( CLK, CLR, SL_SER, SR_SER : in STD_LOGIC;
            S : in STD_LOGIC_VECTOR(1 downto 0);
            P : in STD_LOGIC_VECTOR(3 downto 0);
            Q : out STD_LOGIC_VECTOR(3 downto 0));
end four_bit_bidirectional_shift_register;

architecture Behavioral of four_bit_bidirectional_shift_register is

    type state_type is (idle, load, right_shift, left_shift);
 
    signal present_state, next_state: state_type := idle;
    signal shift_data : STD_LOGIC_VECTOR(3 downto 0) := "0000";

begin

    shift_process: process(present_state, shift_data, P, S)
    begin
    
        case present_state is
            when idle =>
                Q <= "0000";
                
                if ( S = "00" ) then
                    next_state <= idle;
                elsif ( S = "01" ) then
                    next_state <= left_shift;
                elsif ( S = "10" ) then
                    next_state <= right_shift;
                elsif ( S = "11" ) then
                    next_state <= load;
                end if;
                
            
            
            when load =>                           
                Q <= P;
                
                if ( S = "00" ) then          
                    next_state <= idle;       
                elsif ( S = "01" ) then       
                    next_state <= left_shift; 
                elsif ( S = "10" ) then       
                    next_state <= right_shift;
                elsif ( S = "11" ) then       
                    next_state <= load;       
                end if;                                                  
            
            
            when right_shift =>                    
                Q <= shift_data;
                
                if ( S = "00" ) then          
                    next_state <= idle;       
                elsif ( S = "01" ) then       
                    next_state <= left_shift; 
                elsif ( S = "10" ) then       
                    next_state <= right_shift;
                elsif ( S = "11" ) then       
                    next_state <= load;       
                end if;                             
                
                
                                     
            when left_shift =>                    
                Q <= shift_data;
            
                if ( S = "00" ) then          
                    next_state <= idle;       
                elsif ( S = "01" ) then       
                    next_state <= left_shift; 
                elsif ( S = "10" ) then       
                    next_state <= right_shift;
                elsif ( S = "11" ) then       
                    next_state <= load;       
                end if;                              
                                   
                                   
                                    
            when others =>
                next_state <= idle;
                Q <= "0000";
        end case;

    end process shift_process;



    clk_process: process(CLK)
    begin
        if ( CLR = '0' ) then
             shift_data <= "0000";
             present_state <= idle;
        elsif (CLK'event and CLK = '1') then             
                present_state <= next_state;        
        
            if ( next_state = load ) then
                shift_data <= P;
            elsif ( present_state = right_shift) then
                if ( SR_SER = '0') then
                    shift_data <= '0' & shift_data(shift_data'left downto 1);
                elsif (SR_SER = '1') then
                    shift_data <= '1' & shift_data(shift_data'left downto 1);
                end if;
            elsif ( present_state = left_shift) then
                if ( SL_SER = '0') then
                    shift_data <= shift_data(shift_data'left -1 downto 0) & '0';
                elsif (SL_SER = '1') then
                    shift_data <= shift_data(shift_data'left -1 downto 0) & '1';
                end if;
            else
                shift_data <= "0000";
            end if;
            
        end if;
        
    end process clk_process;

end Behavioral;
