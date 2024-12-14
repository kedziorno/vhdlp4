----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:02:02 12/11/2024 
-- Design Name: 
-- Module Name:    module87 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity module87 is
port (
i_clock,i_reset : in std_logic;
o : out std_logic
);
end module87;

architecture behavioral of module87 is
-- 8.7 Device transport states

begin

-- 8.7.1 Device transport idle state diagram p. 222
-- 8.7.2 Device Transport send Register – Device to Host state diagram p. 224
-- 8.7.3 Device Transport send Set Device Bits FIS state diagram p. 225
-- 8.7.4 Device Transport transmit PIO Setup – Device to Host FIS state diagram p. 226
-- 8.7.5 Device Transport transmit Legacy DMA Activate FIS state diagram p. 227
-- 8.7.6 Device Transport transmit First-party DMA Setup – Device to Host FIS state diagram p. 228
-- 8.7.7 Device Transport transmit Data – Device to Host FIS diagram p. 229
-- 8.7.8 Device Transport transmit BIST Activate FIS diagram p. 231
-- 8.7.9 Device Transport decompose Register – Host to Device state diagram p. 232
-- 8.7.10 Device Transport decompose Data (Host to Device) FIS state diagram p. 233
-- 8.7.11 Device Transport decompose DMA Setup – Host to Device or Device to Host state diagram p. 235
-- 8.7.12 Device Transport decompose a BIST Activate FIS state diagram p. 235

end architecture behavioral;
