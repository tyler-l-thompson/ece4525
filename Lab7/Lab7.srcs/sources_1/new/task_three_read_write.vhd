----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/31/2018 10:30:19 AM
-- Design Name: lab7 task two
-- Module Name: task_two_write - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_three_read_write is
    Port ( W_cmd : in STD_LOGIC; -- active low
           R_cmd : in STD_LOGIC; -- active low
           RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Mux_sel : out STD_LOGIC;
           CAS : out STD_LOGIC; -- active low
           RAS : out STD_LOGIC; -- active low
           W : out STD_LOGIC; -- active low
           CLKOUT : out STD_LOGIC);
end task_three_read_write;

architecture Behavioral of task_three_read_write is

    type state_type is ( idle, wa1, wb1, wa2, wb2, wa3, wb3, wa4, wb4, wc4, wd4, we4, wf4, wg4, ra1, rb1, ra2, rb2, ra3, rb3, ra4, rb4, rc4, rd4, re4, rf4, rg4 );
    
    signal present_state, next_state: state_type := idle;

begin


    read_write_cycle: process(present_state, W_cmd, R_cmd)
    begin
    
        case present_state is
        when idle =>
            Mux_sel <= '0';
            CAS <= '1';
            RAS <= '1';
            W <= '0';
            if ( W_cmd = '1' ) then
                next_state <= idle;
            elsif ( W_cmd = '0' ) then
                next_state <= wa1;
            end if;
            if ( R_cmd = '1' ) then
                next_state <= idle;
            elsif ( R_cmd = '0' ) then
                next_state <= ra1;
            end if;
            
        -- W1  
        when wa1 =>
            Mux_sel <= '0';
            CAS <= '1';    
            RAS <= '0';    
            W <= '1';   
            next_state <= wb1;   
        when wb1 =>        
            Mux_sel <= '0';
            CAS <= '1';    
            RAS <= '0';    
            W <= '1';   
            next_state <= wa2;
            
        -- W2
        when wa2 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '0';       
            W <= '1';         
            next_state <= wb2;
        when wb2 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '0';       
            W <= '1';         
            next_state <= wa3;
            
        -- W3                 
        when wa3 =>           
            Mux_sel <= '1';   
            CAS <= '0';       
            RAS <= '0';       
            W <= '1';         
            next_state <= wb3;
        when wb3 =>           
            Mux_sel <= '1';   
            CAS <= '0';       
            RAS <= '0';       
            W <= '1';         
            next_state <= wa4;
               
        -- W4                 
        when wa4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= wb4;
        when wb4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= wc4;         
         when wc4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= wd4;
        when wd4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= we4;
        when we4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= wf4;
        when wf4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= wg4;
        when wg4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= idle;
        
        
        
        -- R1  
        when ra1 =>
            Mux_sel <= '0';
            CAS <= '1';    
            RAS <= '0';    
            W <= '1';   
            next_state <= rb1;   
        when rb1 =>        
            Mux_sel <= '0';
            CAS <= '1';    
            RAS <= '0';    
            W <= '1';   
            next_state <= ra2;
            
        -- R2
        when ra2 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '0';       
            W <= '1';         
            next_state <= rb2;
        when rb2 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '0';       
            W <= '1';         
            next_state <= ra3;
            
        -- R3                 
        when ra3 =>           
            Mux_sel <= '1';   
            CAS <= '0';       
            RAS <= '0';       
            W <= '1';         
            next_state <= rb3;
        when rb3 =>           
            Mux_sel <= '1';   
            CAS <= '0';       
            RAS <= '0';       
            W <= '1';         
            next_state <= ra4;
               
        -- R4                 
        when ra4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= rb4;
        when rb4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= rc4;         
         when rc4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= rd4;
        when rd4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= re4;
        when re4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= rf4;
        when rf4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= rg4;
        when rg4 =>           
            Mux_sel <= '1';   
            CAS <= '1';       
            RAS <= '1';       
            W <= '1';         
            next_state <= idle;
        
        
        when others =>
            Mux_sel <= '0';
            CAS <= '1';
            RAS <= '1';
            W <= '1';
            next_state <= idle;
        end case;
    end process read_write_cycle;


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