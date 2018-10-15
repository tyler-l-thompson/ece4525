----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 10/02/2018 05:27:38 PM
-- Design Name: Lab5
-- Module Name: SRAM_Bus_Controller - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;     
use ieee.std_logic_unsigned.all;


entity SRAM_Bus_Controller is
    Port ( CLK : in STD_LOGIC;
           START : in STD_LOGIC;
           RW : in STD_LOGIC;
           READY : in STD_LOGIC;
           CE : out STD_LOGIC;
           READ : out STD_LOGIC;
           WRITE : out STD_LOGIC;
           READY_CTL : out STD_LOGIC;
           D : inout STD_LOGIC_VECTOR(7 downto 0);
           A : out STD_LOGIC_VECTOR(4 downto 0));

end SRAM_Bus_Controller;

architecture Behavioral of SRAM_Bus_Controller is
    
    type state_type is (idle, read_ready, read_start, reading_1, reading_2, read_stop, read_done, write_ready, write_start, writing_1, writing_2, write_stop, write_done);
 
    signal present_state, next_state: state_type := idle;
    
    signal write_count, read_count : integer range 0 to 3 := 0;
begin

    bus_process: process(present_state, START, RW, READY, write_count, read_count)
	begin
		case present_state is
		    -- ### IDLE ###
            when idle =>
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                D <= "ZZZZZZZZ";
                A <= "00000";
                                               
                   
            if ( START = '1' ) and ( read_count /= write_count ) then
                next_state <= read_ready;
            elsif ( START = '1' ) and ( read_count = write_count ) then
                next_state <= write_ready;
            else
                next_state <= idle;
            end if;     

            -- ### READ READY ###
            when read_ready =>
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                D <= "ZZZZZZZZ";
                -- place address on output
                if ( read_count = 0 ) then
                    A <= "00000";      
                elsif ( read_count = 1 ) then
                    A <= "01010";  
                elsif ( read_count = 2 ) then
                    A <= "11111";
                elsif ( read_count = 3 ) then
                    A <= "10101";
                else A <= "00000";
                end if;
                next_state <= read_start;
                           
            -- ### READ START ###
            when read_start =>
                CE <= '0';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                D <= "ZZZZZZZZ";
                if ( read_count = 0 ) then
                    A <= "00000";      
                elsif ( read_count = 1 ) then
                    A <= "01010";  
                elsif ( read_count = 2 ) then
                    A <= "11111";
                elsif ( read_count = 3 ) then
                    A <= "10101";
                else A <= "00000";
                end if;

                next_state <= reading_1;
                        
             -- ### READING 1 ###
             when reading_1 =>
                CE <= '0';
                READ <= '0';
                WRITE <= '1';
                READY_CTL <= '0'; 
                D <= "ZZZZZZZZ";
                if ( read_count = 0 ) then
                    A <= "00000";      
                elsif ( read_count = 1 ) then
                    A <= "01010";  
                elsif ( read_count = 2 ) then
                    A <= "11111";
                elsif ( read_count = 3 ) then
                    A <= "10101";
                else A <= "00000";
                end if;

                next_state <= reading_2;
                
              -- ### READING 2 ###
             when reading_2 =>
                CE <= '0';
                READ <= '0';
                WRITE <= '1';
                READY_CTL <= '0'; 
                D <= "ZZZZZZZZ";
                if ( read_count = 0 ) then
                    A <= "00000";      
                elsif ( read_count = 1 ) then
                    A <= "01010";  
                elsif ( read_count = 2 ) then
                    A <= "11111";
                elsif ( read_count = 3 ) then
                    A <= "10101";
                else A <= "00000";
                end if;

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
                  D <= "ZZZZZZZZ";
                  if ( read_count = 0 ) then
                      A <= "00000";      
                  elsif ( read_count = 1 ) then
                      A <= "01010";  
                  elsif ( read_count = 2 ) then
                      A <= "11111";
                  elsif ( read_count = 3 ) then
                      A <= "10101";
                  else A <= "00000";
                  end if;

                  next_state <= read_done;
                          
               -- ### READ DONE ###
               when read_done =>
                  CE <= '1';
                  READ <= '1';
                  WRITE <= '1';
                  READY_CTL <= '1'; 
                  D <= "ZZZZZZZZ";
                  if ( read_count = 0 ) then
                      A <= "00000";      
                  elsif ( read_count = 1 ) then
                      A <= "01010";  
                  elsif ( read_count = 2 ) then
                      A <= "11111";
                  elsif ( read_count = 3 ) then
                      A <= "10101";
                  else A <= "00000";
                  end if;

                  next_state <= idle;
                


            -- ### WRITE READY ###
            when write_ready =>
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                D <= "ZZZZZZZZ";
                -- place address on output
                if ( write_count = 0 ) then
                    A <= "00000";      
                elsif ( write_count = 1 ) then
                    A <= "01010";  
                elsif ( write_count = 2 ) then
                    A <= "11111";
                elsif ( write_count = 3 ) then
                    A <= "10101";
                else A <= "00000";
                end if;

                next_state <= write_start;
                           
            -- ### WRITE START ###
            when write_start =>
                CE <= '0';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                D <= "ZZZZZZZZ";
                if ( write_count = 0 ) then
                    A <= "00000";      
                elsif ( write_count = 1 ) then
                    A <= "01010";  
                elsif ( write_count = 2 ) then
                    A <= "11111";
                elsif ( write_count = 3 ) then
                    A <= "10101";
                else A <= "00000";
                end if;

                next_state <= writing_1;
                        
             -- ### WRITING 1 ###
             when writing_1 =>
                CE <= '0';
                READ <= '1';
                WRITE <= '0';
                READY_CTL <= '0'; 
                
                if ( write_count = 0 ) then
                    A <= "00000";
                    D <= "10101010";      
                elsif ( write_count = 1 ) then
                    A <= "01010"; 
                    D <= "00001111"; 
                elsif ( write_count = 2 ) then
                    A <= "11111";
                    D <= "11110000";
                elsif ( write_count = 3 ) then
                    A <= "10101";
                    D <= "01010101";
                else 
                    A <= "00000";
                    D <= "00000000";
                end if;

                next_state <= writing_2;
                
              -- ### WRITING 2 ###
             when writing_2 =>
                CE <= '0';
                READ <= '1';
                WRITE <= '0';
                READY_CTL <= '0'; 
                if ( write_count = 0 ) then
                    A <= "00000";
                    D <= "10101010";      
                elsif ( write_count = 1 ) then
                    A <= "01010"; 
                    D <= "00001111"; 
                elsif ( write_count = 2 ) then
                    A <= "11111";
                    D <= "11110000";
                elsif ( write_count = 3 ) then
                    A <= "10101";
                    D <= "01010101";
                else 
                    A <= "00000";
                    D <= "00000000";
                end if;

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
                 if ( write_count = 0 ) then
                      A <= "00000";
                      D <= "10101010";      
                  elsif ( write_count = 1 ) then
                      A <= "01010"; 
                      D <= "00001111"; 
                  elsif ( write_count = 2 ) then
                      A <= "11111";
                      D <= "11110000";
                  elsif ( write_count = 3 ) then
                      A <= "10101";
                      D <= "01010101";
                  else 
                      A <= "00000";
                      D <= "00000000";
                  end if;

                  next_state <= write_done;
                          
               -- ### WRITE DONE ###
               when write_done =>
                  CE <= '1';
                  READ <= '1';
                  WRITE <= '1';
                  READY_CTL <= '1'; 
                  D <= "ZZZZZZZZ";
                  if ( write_count = 0 ) then
                      A <= "00000";      
                  elsif ( write_count = 1 ) then
                      A <= "01010";  
                  elsif ( write_count = 2 ) then
                      A <= "11111";
                  elsif ( write_count = 3 ) then
                      A <= "10101";
                  else A <= "00000";
                  end if;

                  next_state <= idle;

            
             when others => 
                next_state <= idle;
                CE <= '1';
                READ <= '1';
                WRITE <= '1';
                READY_CTL <= '1';
                D <= "ZZZZZZZZ";
                A <= "00000"; 

        end case;
	end process bus_process;


    clk_process: process
    begin
        wait until (CLK'event and CLK = '1');      
            present_state <= next_state;
            if ( next_state = write_done ) then
                read_count <= read_count;
                if ( write_count = 3 ) then
                    write_count <= 0;
                else
                    write_count <= write_count + 1;
                end if;
            elsif ( next_state = read_done ) then
                 write_count <= write_count;
                 if ( read_count = 3 ) then
                    read_count <= 0;
                 else
                    read_count <= read_count + 1;
                 end if;
            else
                write_count <= write_count;
                read_count <= read_count;
            end if;
    end process clk_process;

end Behavioral;
