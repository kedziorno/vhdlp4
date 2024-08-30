----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:43:37 09/13/2022 
-- Design Name: 
-- Module Name:    figure_5 - Behavioral 
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

entity figure_5 is
port (
pndfby_last,pbalby_last : in std_logic;
pndfby : out std_logic;
pd : in std_logic_vector(0 to 8);
pdc : out std_logic_vector(0 to 9);
pbalby : out std_logic
);
end figure_5;

architecture Behavioral of figure_5 is

component figure_3a3b is
port (
pk : in std_logic;
pndfs6 : in std_logic;
pa,pb,pc,pd,pe,pf,pg,ph : in std_logic;
pca,pcb,pcc,pcd,pce,pci,pcf,pcg,pch,pcj : out std_logic;
pbalby : out std_logic
);
end component figure_3a3b;
for all : figure_3a3b use entity work.figure_3a3b(Behavioral);

signal pndfs6 : std_logic;
signal a : std_logic;

begin

a512 : a <= not (pndfby_last xor pbalby_last);
pndfby <= a;

a510 : figure_3a3b
port map (
pk => pd(8),
pndfs6 => a,
pa => pd(0),
pb => pd(1),
pc => pd(2),
pd => pd(3),
pe => pd(4),
pf => pd(5),
pg => pd(6),
ph => pd(7),
pca => pdc(0),
pcb => pdc(1),
pcc => pdc(2),
pcd => pdc(3),
pce => pdc(4),
pci => pdc(5),
pcf => pdc(6),
pcg => pdc(7),
pch => pdc(8),
pcj => pdc(9),
pbalby => pbalby
);

end Behavioral;
