----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/31/2018 10:30:19 AM
-- Design Name: lab7 task two
-- Module Name: task_two_write - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task_two_write is
    Port ( W_cmd : in STD_LOGIC; -- active low
           RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Mux_sel : out STD_LOGIC;
           CAS : out STD_LOGIC; -- active low
           RAS : out STD_LOGIC; -- active low
           W : out STD_LOGIC; -- active low
           CLKOUT : out STD_LOGIC);
end task_two_write;

architecture Behavioral of task_two_write is

    type state_type is ( idle, wa1, wb1, wa2, wb2, wa3, wb3, wa4, wb4, wc4, wd4, we4, wf4, wg4 );
    
    signal present_state, next_state: state_type := idle;

begin


    write_cycle: process(present_state, W_cmd)
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
            
        -- R1  
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
            
        -- R2
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
            
        -- R3                 
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
               
        -- R4                 
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
        
        when others =>
            Mux_sel <= '0';
            CAS <= '1';
            RAS <= '1';
            W <= '1';
            next_state <= idle;
        end case;
    end process write_cycle;


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