----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:00 06/29/2023 
-- Design Name: 
-- Module Name:    testfsm1 - Behavioral 
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

entity testfsm1 is
port (
clk,rst : in std_logic;
i1,i2,i3 : in std_logic;
o1,o2,o3 : out std_logic
);
end testfsm1;

architecture Behavioral of testfsm1 is

begin

p0 : process (clk,rst) is
  type states is (a,b,c);
  variable state : states;
--  attribute keep : string;
--  attribute keep of state : variable is "true";
begin
    if (rst = '1') then
      o1 <= '0';
      o2 <= '0';
      o3 <= '0';
      state := a;
  elsif rising_edge (clk) then
      case (state) is
        when a =>
          if (i1='1') then
            state := b;
                        o1 <= '1';

          else
             state := a;
          end if;
        when b =>
          if (i1='1') then
            state := c;
            o2 <= '1';
          else
             state := a;
          end if;
        when c =>
          if (i1='1') then
            state := c;
            o3 <= '1';
          else
             state := a;
          end if;
      end case;
    end if;
  
end process p0;

end Behavioral;

