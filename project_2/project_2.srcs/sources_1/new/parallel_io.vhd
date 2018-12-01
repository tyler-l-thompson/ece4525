----------------------------------------------------------------------------------
-- Engineer: Tyler Thompson
-- Create Date: 11/29/2018 12:20:38 PM
-- Design Name: ECE4525 Project 2
-- Module Name: parallel_io - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
    signal data, data_in: STD_LOGIC_VECTOR(7 downto 0) := "ZZZZZZZZ";
    signal QRD : STD_LOGIC := '1';
    signal async_strobe_reset: STD_LOGIC := '1';
    signal async_done : STD_LOGIC;
    
    component async_strobe
        port (
            STB, RD, RESET : in STD_LOGIC;
            IBF, INTR, DONE : out STD_LOGIC
        );
    end component;

begin
    QRD <= RD or CE or A0;
    
    AS: async_strobe port map (
        STB => STB,
        RD => QRD,
        RESET => async_strobe_reset,
        IBF => async_status(0),
        INTR => async_status(1),
        DONE => async_done
    );

data_bus: process(RESET, control, CE, RD, A0, P, D, data, status, async_strobe_reset)
begin
    
    data_in <= D;   
    
    if ( A0 = '1' and CE = '0' and RD = '0') then       
            D(0) <= status(0);
            D(1) <= status(1);
            D(2) <= status(2);
            D(3) <= '0';
            D(4) <= '0';
            D(5) <= '0';
            D(6) <= '0';
            D(7) <= '0';
    elsif ( A0 = '0' and CE = '0' and RD = '0' and async_strobe_reset = '1') then
           if ( control(0) = '1' ) then
                D <= data;             
           elsif ( control(0) = '0' ) then
                D <= P;
           else
                D <= "ZZZZZZZZ"; 
           end if;
    else
         D <= "ZZZZZZZZ";
    end if;   
    
end process data_bus;

async_strobe_reg: process(RESET, STB, RD, CE, A0, control, async_done)
begin

    if (RESET = '1' or async_done = '1') then
        async_strobe_reset <= '1';
    else
        if (STB'event and STB = '0') then
            if ( RD = '1' and CE = '0' and A0 = '0' and control(0) = '1') then
                async_strobe_reset <= '0';
            end if;
        end if;
    end if;
end process async_strobe_reg;

data_reg: process(RESET, STB, P, control)
begin
    if (RESET = '1') then
        data <= "00000000";
    else
        if (STB'event and STB = '0' and control(0) = '1') then
                data <= P;
        end if;
    end if;
end process data_reg;

control_reg: process(A0, RESET, CE, WR, data_in)
begin
    if (RESET = '1') then
        control <= "00";
    else
        if(WR'event and WR = '1') then
                if (A0 = '1' and CE = '0') then
                    control(0) <= data_in(0); -- mode 
                    control(1) <= data_in(1); -- INTE
                end if;
        end if;
    end if;
end process control_reg;

status_reg0: process(RESET, status, async_status, RD, control, STB, async_strobe_reset)
begin
    IBF <= async_status(0);
    if ((RESET = '1' ) or (RD = '1' and status(2) = '0' and control(0) = '1' and STB = '1'and async_strobe_reset = '1'))then
        status(0) <= '0';
    else
        if( (async_status(0)'event) and (async_status(0) = '1') ) then
            status(0) <= async_status(0); --IBF
        end if;
    end if;
end process status_reg0;

status_reg1: process(RESET, WR, A0, CE, data_in)
begin
    if (RESET = '1' ) then
        status(1) <= '0';
    else
        if( WR'event and WR = '1' ) then
             if (A0 = '1' and CE = '0') then
                status(1) <= data_in(1);
             end if;
        end if;
    end if;
end process status_reg1;

status_reg2: process(RESET, status, async_status, A0, CE, STB, async_strobe_reset, control, RD)
begin
    if ( control(1) = '1') then
        INTR <= async_status(1);
    else
        INTR <= '0';
    end if;
    
    if ((RESET = '1' ) or (RD = '0' and control(0) = '1' and A0 = '0' and CE = '0' and STB = '1'and async_strobe_reset = '1')) then
        status(2) <= '0';
    else
        if( (async_status(1)'event) and (async_status(1) = '1') ) then
            status(2) <= async_status(1); -- INTR
        end if;
    end if;
end process status_reg2;


end Behavioral;
