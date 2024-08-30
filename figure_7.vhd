----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:34 09/13/2022 
-- Design Name: 
-- Module Name:    figure_7 - Behavioral 
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

entity figure_7 is
port (
pd0,pd1,pd2,pd3 : in std_logic_vector(0 to 8);
pdc0,pdc1,pdc2,pdc3 : out std_logic_vector(0 to 9);
pbalby3_last,pndf3_last : in std_logic;
pbalby3 : out std_logic;
pndf3 : out std_logic
);
end figure_7;

architecture Behavioral of figure_7 is

signal pndfw,pbalby0,pndf1,pbalby1,pndf2,pbalby2,pbal012 : std_logic;
signal a,b : std_logic;

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

begin

a721 : pndf1 <= not (pndfw xor pbalby0);
a731 : pndf2 <= (pbalby1 xor pndfw xor pbalby0);
a732 : pbal012 <= (pbalby0 xor pbalby1 xor pbalby2);
a722 : a <= not (pbal012 xor pndfw);
a723 : pndfw <= not (pbalby3_last xor pndf3_last);

a711 : figure_3a3b
port map (
pk => pd0(8),
pndfs6 => pndfw,
pa => pd0(0),
pb => pd0(1),
pc => pd0(2),
pd => pd0(3),
pe => pd0(4),
pf => pd0(5),
pg => pd0(6),
ph => pd0(7),
pca => pdc0(0),
pcb => pdc0(1),
pcc => pdc0(2),
pcd => pdc0(3),
pce => pdc0(4),
pci => pdc0(5),
pcf => pdc0(6),
pcg => pdc0(7),
pch => pdc0(8),
pcj => pdc0(9),
pbalby => pbalby0
);

a712 : figure_3a3b
port map (
pk => pd1(8),
pndfs6 => pndf1,
pa => pd1(0),
pb => pd1(1),
pc => pd1(2),
pd => pd1(3),
pe => pd1(4),
pf => pd1(5),
pg => pd1(6),
ph => pd1(7),
pca => pdc1(0),
pcb => pdc1(1),
pcc => pdc1(2),
pcd => pdc1(3),
pce => pdc1(4),
pci => pdc1(5),
pcf => pdc1(6),
pcg => pdc1(7),
pch => pdc1(8),
pcj => pdc1(9),
pbalby => pbalby1
);

a713 : figure_3a3b
port map (
pk => pd2(8),
pndfs6 => pndf2,
pa => pd2(0),
pb => pd2(1),
pc => pd2(2),
pd => pd2(3),
pe => pd2(4),
pf => pd2(5),
pg => pd2(6),
ph => pd2(7),
pca => pdc2(0),
pcb => pdc2(1),
pcc => pdc2(2),
pcd => pdc2(3),
pce => pdc2(4),
pci => pdc2(5),
pcf => pdc2(6),
pcg => pdc2(7),
pch => pdc2(8),
pcj => pdc2(9),
pbalby => pbalby2
);

a714 : figure_3a3b
port map (
pk => pd3(8),
pndfs6 => a,
pa => pd3(0),
pb => pd3(1),
pc => pd3(2),
pd => pd3(3),
pe => pd3(4),
pf => pd3(5),
pg => pd3(6),
ph => pd3(7),
pca => pdc3(0),
pcb => pdc3(1),
pcc => pdc3(2),
pcd => pdc3(3),
pce => pdc3(4),
pci => pdc3(5),
pcf => pdc3(6),
pcg => pdc3(7),
pch => pdc3(8),
pcj => pdc3(9),
pbalby => b
);
pndf3 <= a;
pbalby3 <= b;

end Behavioral;
