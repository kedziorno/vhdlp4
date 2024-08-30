----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:34 06/25/2023 
-- Design Name: 
-- Module Name:    test1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test1 is
port (
SIGNAL tx_empty : IN  std_logic;
SIGNAL clk      : IN  std_logic;
SIGNAL ld       : OUT std_logic;
SIGNAL reg      : OUT std_logic_vector(9 DOWNTO 0));
end test1;

architecture Behavioral of test1 is

PROCEDURE SendALIGN  (SIGNAL tx_empty : IN  std_logic;
                          SIGNAL clk      : IN  std_logic;
                          SIGNAL ld       : OUT std_logic;
                          SIGNAL reg      : OUT std_logic_vector(9 DOWNTO 0))
                          
    IS
        TYPE code_word_pair IS ARRAY(0 TO 1) OF std_logic_vector(9 DOWNTO 0);   
    CONSTANT cK285         : code_word_pair := ("0101111100", "1010000011");
    CONSTANT cD102          : code_word_pair := ("1010101010", "1010101010");
    CONSTANT cD273          : code_word_pair := ("1100011011", "0011100100");

    BEGIN                      
        IF tx_empty = '0' THEN
            WAIT UNTIL tx_empty = '1';
        END IF;       
        WAIT UNTIL clk='1';
        -- negative rd assumed 
        reg <= cK285(0);
--        ld <= '1', '0' AFTER 1 ps;
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
        WAIT UNTIL tx_empty = '1';
        WAIT UNTIL clk='1';
        reg <= cD102(1);
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
        WAIT UNTIL tx_empty = '1';
        WAIT UNTIL clk='1';
        reg <= cD102(0);
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
        WAIT UNTIL tx_empty = '1';
        WAIT UNTIL clk='1';
        reg <= cD273(1);
        ld <= '1';
        WAIT UNTIL clk='1';
        ld <= '0';
    END SendALIGN;

begin

p0 : process is
begin
SendALIGN (tx_empty, clk, ld, reg);
end process p0;

end Behavioral;

