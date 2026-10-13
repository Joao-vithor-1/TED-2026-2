library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_RA_251023264 is
end tb_RA_251023264;

architecture Behavioral of tb_RA_251023264 is
    component RA_251023264
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               D : in STD_LOGIC;
               NORMAL : out STD_LOGIC;
               ALERTA : out STD_LOGIC;
               CRITICO : out STD_LOGIC);
    end component;

    -- Sinais de teste
    signal tb_A : STD_LOGIC := '0';
    signal tb_B : STD_LOGIC := '0';
    signal tb_C : STD_LOGIC := '0';
    signal tb_D : STD_LOGIC := '0';
    
    signal tb_NORMAL : STD_LOGIC;
    signal tb_ALERTA : STD_LOGIC;
    signal tb_CRITICO : STD_LOGIC;

begin
    uut: RA_251023264 port map (
        A => tb_A,
        B => tb_B,
        C => tb_C,
        D => tb_D,
        NORMAL => tb_NORMAL,
        ALERTA => tb_ALERTA,
        CRITICO => tb_CRITICO
    );

    stim_proc: process
    begin
        tb_A <= '0'; tb_B <= '0'; tb_C <= '0'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '0'; tb_C <= '0'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '0'; tb_C <= '1'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '0'; tb_C <= '1'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '1'; tb_C <= '0'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '1'; tb_C <= '0'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '1'; tb_C <= '1'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '0'; tb_B <= '1'; tb_C <= '1'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '0'; tb_C <= '0'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '0'; tb_C <= '0'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '0'; tb_C <= '1'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '0'; tb_C <= '1'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '1'; tb_C <= '0'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '1'; tb_C <= '0'; tb_D <= '1'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '1'; tb_C <= '1'; tb_D <= '0'; wait for 100 ns;
        tb_A <= '1'; tb_B <= '1'; tb_C <= '1'; tb_D <= '1'; wait for 100 ns;
        wait;
    end process;
end Behavioral;