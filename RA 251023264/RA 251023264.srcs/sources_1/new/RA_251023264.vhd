----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.10.2026 15:05:38
-- Design Name: 
-- Module Name: RA_251023264 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RA_251023264 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           NORMAL : out STD_LOGIC;
           ALERTA : out STD_LOGIC;
           CRITICO : out STD_LOGIC);
end RA_251023264;

architecture Behavioral of RA_251023264 is

begin
    NORMAL <= ((NOT A) AND (NOT B) AND (NOT D)) or ((NOT A) AND (NOT C) AND (NOT D)) or ((NOT A) AND (NOT B) AND (NOT C));
    
    ALERTA <= (NOT A AND NOT B AND C AND D) OR 
          (NOT A AND B AND NOT C AND D) OR 
          (NOT A AND B AND C AND NOT D) OR 
          (A AND NOT B AND NOT C) OR 
          (A AND NOT B AND NOT D) OR 
          (A AND NOT C AND NOT D);
          
    CRITICO <=  (A AND B AND C) or
                (A AND B AND D) OR
                (A AND C AND D) OR
                (B AND C AND D);

end Behavioral;
