----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/10/2018 10:56:27 PM
-- Design Name: project_1
-- Module Name: project_1 - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity project_1 is
    Port ( CLK, RESET, OP1_IN, OP2_IN, START : in STD_LOGIC;
            RES_OUT, OVF, DONE, OP_LD, RES_LD : out STD_LOGIC;
            SRCT : out std_logic_vector(3 downto 0);
            BUF_EN : out std_logic_vector(1 downto 0));
end project_1;

architecture Behavioral of project_1 is
    type state_type is (idle, par_load, s1, s2, s3, s4);                  
                                                      
    signal present_state, next_state: state_type := idle;   
    
    signal OP2_IN_not, OVF_REG : std_logic := '0';
    signal count : std_logic_vector(2 downto 0) := "000";
                                                      
begin                                                     
                                                      
    serial_add: process(present_state, OP1_IN, OP2_IN_not, START, count, OVF_REG)              
    begin                                                 
        case present_state is
        
        when idle =>
            RES_OUT <= '0';                                   
            OVF_REG <= OVF_REG;
            DONE <= '0';
            OP_LD <= '0';
            RES_LD <= '0';
            BUF_EN <= "11";
            SRCT <= "0000";
            if ( START = '1' ) then
                next_state <= par_load;
            elsif ( START = '0' ) then
                next_state <= idle;
            end if;         
        
        when par_load =>
            SRCT <= "1111";
            BUF_EN <= "00";
            RES_OUT <= '0';                                   
            OVF_REG <= '0';
            DONE <= '1';
            OP_LD <= '1';
            RES_LD <= '0';
            next_state <= s1;
                                     
        when s1 =>       
            SRCT <= "1010";  
            BUF_EN <= "11";
            DONE <= '1';  
            OP_LD <= '1';
            RES_LD <= '1';
            if ( count = "000" ) then
                RES_OUT <= '0';
            else                          
                RES_OUT <= '1';
            end if;                                                                       
                                                          
            if ( OP1_IN = '0' ) then                           
                if ( OP2_IN_not = '0' ) then   
                    OVF_REG <= '1';                    
                    next_state <= s1;                     
                elsif ( OP2_IN_not = '1' ) then 
                    OVF_REG <= '0';                                       
                    next_state <= s2;                     
                end if;                                   
            elsif ( OP1_IN = '1' ) then                        
                if ( OP2_IN_not = '0' ) then   
                    OVF_REG <= '0';                     
                    next_state <= s2;                     
                elsif ( OP2_IN_not = '1' ) then  
                    OVF_REG <= '1';                  
                    next_state <= s3;                     
                end if;                                   
            end if;                                       
                                                          
        when s2 =>
            SRCT <= "1010";  
            BUF_EN <= "11";                                      
            RES_OUT <= '0';                                        
            DONE <= '1';   
            OP_LD <= '1';    
            RES_LD <= '1';                        
                                                          
            if ( OP1_IN = '0' ) then                           
                if ( OP2_IN_not = '0' ) then   
                    OVF_REG <= '1';                    
                    next_state <= s1;                     
                elsif ( OP2_IN_not = '1' ) then 
                    OVF_REG <= '0';                   
                    next_state <= s2;                     
                end if;                                   
            elsif ( OP1_IN = '1' ) then                        
                if ( OP2_IN_not = '0' ) then  
                    OVF_REG <= '0';                      
                    next_state <= s2;                     
                elsif ( OP2_IN_not = '1' ) then
                    OVF_REG <= '0';                    
                    next_state <= s3;                     
                end if;                                   
            end if;                                       
                                                          
        when s3 =>         
            SRCT <= "1010";
            BUF_EN <= "11";                               
            RES_OUT <= '1';                                         
            DONE <= '1';    
            OP_LD <= '1';  
            RES_LD <= '1';                        
                                                          
            if ( OP1_IN = '0' ) then                           
                if ( OP2_IN_not = '0' ) then    
                    OVF_REG <= '0';          
                    next_state <= s2;                     
                elsif ( OP2_IN_not = '1' ) then
                    OVF_REG <= '0';                    
                    next_state <= s3;                     
                end if;                                   
            elsif ( OP1_IN = '1' ) then                        
                if ( OP2_IN_not = '0' ) then
                    OVF_REG <= '0';                       
                    next_state <= s3;                     
                elsif ( OP2_IN_not = '1' ) then
                    OVF_REG <= '1';                    
                    next_state <= s4;                     
                end if;                                   
            end if;                                       
                                                          
        when s4 =>         
            SRCT <= "1010";
            BUF_EN <= "11";                               
            RES_OUT <= '0';                                      
            DONE <= '1';  
            OP_LD <= '1';  
            RES_LD <= '1';                            
                                                          
            if ( OP1_IN = '0' ) then                           
                if ( OP2_IN_not = '0' ) then   
                    OVF_REG <= '1';                    
                    next_state <= s2;                     
                elsif ( OP2_IN_not = '1' ) then
                    OVF_REG <= '0';                    
                    next_state <= s3;                     
                end if;                                   
            elsif ( OP1_IN = '1' ) then                        
                if ( OP2_IN_not = '0' ) then   
                    OVF_REG <= '0';                     
                    next_state <= s3;                     
                elsif ( OP2_IN_not = '1' ) then 
                    OVF_REG <= '0';                   
                    next_state <= s4;                     
                end if;                                   
            end if;                                       
                                                          
        when others =>                                    
            RES_OUT <= '0';                                   
            OVF_REG <= '0';         
            SRCT <= "1010"; 
            BUF_EN <= "11";
            DONE <= '1';  
            OP_LD <= '1';    
            RES_LD <= '1';                   
            next_state <= idle;                             
                                                          
        end case;                                         
    end process serial_add;                               
                                                          
    clk_process: process(CLK, RESET, next_state, OP2_IN, count, OVF_REG)                               
    begin                                                 
        if ( RESET = '1' ) then                           
            present_state <= idle;    
            OVF <= '0';                     
        else                                             
            if (CLK'event and CLK = '1') then
                if ( count = "110" or count = "111" or present_state = idle ) then
                    OVF <= OVF_REG;
                else
                    OVF <= '0';
                end if;
                    
                if ( present_state = s1 or present_state = s2 or present_state = s3 or present_state = s4 ) then
                    count <= std_logic_vector( unsigned(count) + 1 );
                end if;    
                if ( count = "111" ) then
                    present_state <= idle;
                else     
                    present_state <= next_state;
                end if;   
                
            end if;          
        end if;         
                                          
        OP2_IN_not <= not OP2_IN;     
                                             
    end process clk_process;                              
end Behavioral;                                       
