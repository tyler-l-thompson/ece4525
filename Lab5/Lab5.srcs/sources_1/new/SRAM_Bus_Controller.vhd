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
    
    type state_type is (idle, read_ready, read_start, reading_1, reading_2, read_stop, read_done, write_ready, write_start, writing_1, writing_2, write_stop, write_done);
 
    signal present_state, next_state: state_type := idle;

begin

    bus_process: process(present_state, START, RW, READY)
	begin
		case present_state is
		    -- ### IDLE ###
            when idle =>
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                            
            if (START = '1' and RW = '1') then
                D0 <= 'Z';
                D1 <= 'Z';
                D2 <= 'Z';
                D3 <= 'Z';
                D4 <= 'Z';
                D5 <= 'Z';
                D6 <= 'Z';
                D7 <= 'Z';
              next_state <= read_ready;
            elsif (START = '1' and RW = '0') then
                
              next_state <= write_ready;
            else 
              next_state <= idle;
              D0 <= 'Z';
              D1 <= 'Z';
              D2 <= 'Z';
              D3 <= 'Z';
              D4 <= 'Z';
              D5 <= 'Z';
              D6 <= 'Z';
              D7 <= 'Z';
            end if;
            
            -- ### READ READY ###
            when read_ready =>
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                -- place address on output
                A0 <= '0';
                A1 <= '0';
                A2 <= '0';
                A3 <= '0';
                A4 <= '0';
                
                next_state <= read_start;
                           
            -- ### READ START ###
            when read_start =>
                CE <= '0';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                
                next_state <= reading_1;
                        
             -- ### READING 1 ###
             when reading_1 =>
                CE <= '0';
                READ <= '0';
                WRITE <= '1';
                READY_CTL <= '0'; 
                
                next_state <= reading_2;
                
              -- ### READING 2 ###
             when reading_2 =>
                CE <= '0';
                READ <= '0';
                WRITE <= '1';
                READY_CTL <= '0'; 
                
                if (READY = '1') then
                    next_state <= reading_2;
                else
                    next_state <= read_stop;
                end if;
              
               -- ### READ STOP ###
              when read_stop =>
                  CE <= '0';
                  READ <= '1';
                  WRITE <= '1';
                  READY_CTL <= '1';
                  
                  next_state <= read_done;
                          
               -- ### READ DONE ###
               when read_done =>
                  CE <= '1';
                  READ <= '1';
                  WRITE <= '1';
                  READY_CTL <= '1'; 
        
                  next_state <= idle;
                


            -- ### WRITE READY ###
            when write_ready =>
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                -- place address on output
                A0 <= '0';
                A1 <= '0';
                A2 <= '0';
                A3 <= '0';
                A4 <= '0';                
                
                next_state <= write_start;
                           
            -- ### WRITE START ###
            when write_start =>
                CE <= '0';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                
                next_state <= writing_1;
                        
             -- ### WRITING 1 ###
             when writing_1 =>
                CE <= '0';
                READ <= '1';
                WRITE <= '0';
                READY_CTL <= '0'; 
                D0 <= '1';
                D1 <= '1';
                D2 <= '0';
                D3 <= '1';
                D4 <= '1';
                D5 <= '0';
                D6 <= '1';
                D7 <= '1';
                next_state <= writing_2;
                
              -- ### WRITING 2 ###
             when writing_2 =>
                CE <= '0';
                READ <= '1';
                WRITE <= '0';
                READY_CTL <= '0'; 
                
                if (READY = '1') then
                    next_state <= writing_2;
                else
                    next_state <= write_stop;
                end if;
              
               -- ### WRITE STOP ###
              when write_stop =>
                  CE <= '0';
                  READ <= '1';
                  WRITE <= '1';
                  READY_CTL <= '1';
                  
                  next_state <= write_done;
                          
               -- ### WRITE DONE ###
               when write_done =>
                  CE <= '1';
                  READ <= '1';
                  WRITE <= '1';
                  READY_CTL <= '1'; 
        
                  next_state <= idle;

            
             when others => next_state <= idle;
        end case;
	end process bus_process;


    clk_process: process
    begin
        wait until (CLK'event and CLK = '1');
        present_state <= next_state;
    end process clk_process;

end Behavioral;
