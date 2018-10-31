----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/31/2018 10:30:19 AM
-- Design Name: lab7 task one
-- Module Name: task_one_read - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_one_read is
    Port ( R_cmd : in STD_LOGIC; -- active low
           RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Mux_sel : out STD_LOGIC;
           CAS : out STD_LOGIC; -- active low
           RAS : out STD_LOGIC; -- active low
           W : out STD_LOGIC);
end task_one_read;

architecture Behavioral of task_one_read is

    type state_type is ( idle, ra1, rb1, ra2, rb2, ra3, rb3, ra4, rb4, rc4, rd4, re4, rf4, rg4 );
    
    signal present_state, next_state: state_type := idle;

begin

    read_cycle: process(present_state, R_cmd)
    begin
    
        case present_state is
        when idle =>
            Mux_sel <= '0';
            CAS <= '1';
            RAS <= '1';
            W <= '0';
            if ( R_cmd = '1' ) then
                next_state <= idle;
            elsif ( R_cmd = '0' ) then
                next_state <= ra1;
            end if;
            
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
    end process read_cycle;


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
