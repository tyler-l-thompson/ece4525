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
    signal data: STD_LOGIC_VECTOR(7 downto 0) := "ZZZZZZZZ";
    signal async_strobe_reset: STD_LOGIC := '1';
    
    component async_strobe
        port (
            STB, RD, RESET : in STD_LOGIC;
            IBF, INTR : out STD_LOGIC
        );
    end component;

begin

    AS: async_strobe port map (
        STB => STB,
        RD => RD,
        RESET => async_strobe_reset,
        IBF => status(0),
        INTR => status(2)
    );

data_bus: process(RD, data, control)
begin
    
    if(RD = '0') then
        D <= data;
    elsif (RD = '1') then
        D <= "ZZZZZZZZ";
    end if;
    
    if (control(0) = '1') then
        async_strobe_reset <= '0';
    elsif (control(0) = '0') then
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
            control(0) <= D(0); -- mode
            control(1) <= D(1); -- INTE
        end if;
    end if;

end process control_reg;

status_reg: process(A0, RESET, CE, RD, status)
begin
    status(1) <= control(1);
    IBF <= status(0);
    INTR <= status(2);
    
    if (RESET = '1' ) then
        status(1) <= '0';
    else
        if(RD'event and RD = '0' and A0 = '1' and CE = '0') then
            data(0) <= status(0); -- IBF
            data(1) <= status(1); -- INTE
            data(2) <= status(2); -- INTR
            data(3) <= '0';
            data(4) <= '0';
            data(5) <= '0';
            data(6) <= '0';
            data(7) <= '0';
        end if;
    end if;
end process status_reg;

end Behavioral;
