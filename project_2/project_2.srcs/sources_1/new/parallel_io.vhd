----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/29/2018 12:20:38 PM
-- Design Name: ECE4525 Project 2
-- Module Name: parallel_io - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity parallel_io is
  Port (
    D : inout STD_LOGIC_VECTOR(7 downto 0);
    P : in STD_LOGIC_VECTOR(7 downto 0);
    RESET, A0, STB, CE, RD, WR : in STD_LOGIC;
    INTR, IBF : out STD_LOGIC
  );
end parallel_io;

architecture Behavioral of parallel_io is

    signal control : STD_LOGIC_VECTOR(1 downto 0) := "ZZ";
    signal status : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal async_status : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal data: STD_LOGIC_VECTOR(7 downto 0) := "ZZZZZZZZ";
    signal read_status : STD_LOGIC := '0';
    signal QRD : STD_LOGIC := '1';
    signal async_strobe_reset: STD_LOGIC := '1';
    
    component async_strobe
        port (
            STB, RD, RESET : in STD_LOGIC;
            IBF, INTR : out STD_LOGIC
        );
    end component;

begin
    QRD <= RD or CE or A0;
    
    

    AS: async_strobe port map (
        STB => STB,
        RD => QRD,
        RESET => async_strobe_reset,
        IBF => async_status(0),
        INTR => async_status(1)
    );

data_bus: process(RD, STB, A0, data, control, status, read_status, async_strobe_reset)
begin
    
    if(read_status = '1') then
        D(0) <= status(0);
        D(1) <= status(1);
        D(2) <= status(2);
        D(3) <= '0';
        D(4) <= '0';
        D(5) <= '0';
        D(6) <= '0';
        D(7) <= '0';
    elsif (read_status = '0') then
        if(A0 = '0' and CE = '0' and RD = '1' and async_strobe_reset = '1') then
            D <= data;
        elsif(A0 = '0' and CE = '0' and RD = '0' and async_strobe_reset = '1') then
            D <= P;
        elsif (RD = '1' and read_status = '0') then
            D <= "ZZZZZZZZ";
        end if;
    end if;
    
    if (control(0) = '1' and STB = '0' and RD = '1' and A0 = '0') then
        async_strobe_reset <= '0';
    elsif (control(0) = '0' or A0 = '1') then
         async_strobe_reset <= '1';
    end if;
    
end process data_bus;

data_reg: process(A0, RESET, CE, STB)
begin
    if (RESET = '1') then
        data <= "00000000";
    else
        if (STB'event and STB = '0' and A0 = '0' and CE = '0') then
                data <= P;
        end if;
    end if;
end process data_reg;

control_reg: process(A0, RESET, CE, WR)
begin
    
    if (RESET = '1' ) then
        control <= "00";
    else
        if(WR'event and WR = '0' and A0 = '1' and CE = '0') then
            if ( D(0) = 'X' ) then
                control(0) <= '0'; -- mode
            else
                control(0) <= D(0); -- mode
            end if;
             if ( D(1) = 'X' ) then
                 control(1) <= '0'; -- INTE
             else
                 control(1) <= D(1); -- INTE
             end if;
            
            
        end if;
    end if;

end process control_reg;

status_reg: process(A0, RESET, CE, RD, STB, status, async_status, control, async_strobe_reset)
begin
    status(1) <= control(1);-- INTE
    IBF <= status(0);
    if ( control(1) = '1') then
        INTR <= status(2);
    else
        INTR <= '0';
    end if;
    
    if (RESET = '1' ) then
        status(0) <= '0';
        status(1) <= '0';
        status(2) <= '0';
--    elsif(control(0) = '1' and A0 = '0' and CE = '0' and RD = '0' and STB = '1'and async_strobe_reset = '1') then
--        status(0) <= '0';
--        status(2) <= '0';
    else
        if(RD'event and RD = '0' and A0 = '1' and CE = '0') then
            read_status <= '1';
        end if;
        
        if(A0 = '0') then
            read_status <= '0';
        end if;
        
        if( (async_status(0)'event) and (async_status(0) = '1') ) then
            status(0) <= async_status(0);
        end if;
        
        if( (async_status(1)'event) and (async_status(1) = '1') ) then
            --if ( control(1) = '1') then
                status(2) <= async_status(1);
           -- end if; 
        end if;

        if ( RD'event and RD = '1' and status(2) = '0') then
            status(0) <= '0'; -- IBF
        end if;
        
        if ( RD'event and RD = '0' and control(0) = '1' and A0 = '0' and CE = '0' and STB = '1'and async_strobe_reset = '1') then
            status(2) <= '0'; -- INTR
        end if;
        
    end if;
end process status_reg;

end Behavioral;
