----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:28 09/21/2022 
-- Design Name: 
-- Module Name:    figure_17 - Behavioral 
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

entity figure_17 is
port (
pcd40 : in std_logic_vector(0 to 39);
pdfby3,pndfby3 : out std_logic;
pduby3,pnduby3 : out std_logic;
pd36 : out std_logic_vector(0 to 35);
pinvby : out std_logic_vector(0 to 3);
pviol : out std_logic_vector(0 to 3);
pndfby3_last,pduby3_last,pdfby3_last,pnduby3_last : in std_logic
);
end figure_17;

architecture Behavioral of figure_17 is

COMPONENT figure_14
PORT(
pcd : IN  std_logic_vector(0 to 9);
pd : OUT  std_logic_vector(0 to 8);
pndfby : IN  std_logic;
pdfby : IN  std_logic;
pviol : OUT  std_logic;
pinvby : OUT  std_logic;
pduby : OUT  std_logic;
pnduby : OUT  std_logic
);
END COMPONENT;
for all : figure_14 use entity work.figure_14(Behavioral);

signal pcd_1710 : std_logic_vector(0 to 9) := (others => '0');
signal pndfby_1710 : std_logic := '0';
signal pdfby_1710 : std_logic := '0';
signal pd_1710 : std_logic_vector(0 to 8);
signal pviol_1710 : std_logic;
signal pinvby_1710 : std_logic;
signal pduby_1710 : std_logic;
signal pnduby_1710 : std_logic;

signal pcd_1711 : std_logic_vector(0 to 9) := (others => '0');
signal pndfby_1711 : std_logic := '0';
signal pdfby_1711 : std_logic := '0';
signal pd_1711 : std_logic_vector(0 to 8);
signal pviol_1711 : std_logic;
signal pinvby_1711 : std_logic;
signal pduby_1711 : std_logic;
signal pnduby_1711 : std_logic;

signal pcd_1712 : std_logic_vector(0 to 9) := (others => '0');
signal pndfby_1712 : std_logic := '0';
signal pdfby_1712 : std_logic := '0';
signal pd_1712 : std_logic_vector(0 to 8);
signal pviol_1712 : std_logic;
signal pinvby_1712 : std_logic;
signal pduby_1712 : std_logic;
signal pnduby_1712 : std_logic;

signal pcd_1713 : std_logic_vector(0 to 9) := (others => '0');
signal pndfby_1713 : std_logic := '0';
signal pdfby_1713 : std_logic := '0';
signal pd_1713 : std_logic_vector(0 to 8);
signal pviol_1713 : std_logic;
signal pinvby_1713 : std_logic;
signal pduby_1713 : std_logic;
signal pnduby_1713 : std_logic;

signal pnduby2,pndfby1,pdfby1,pndfby2,pdfby2,nduby3_last,npduby3_last,pdfby0,pndfby0,npduby0,n0,nduby1,n2,n3,nduby2,n4,n5,npduby2 : std_logic;

begin

pcd_1710(0 to 9) <= pcd40(0 to 9);
pcd_1711(0 to 9) <= pcd40(10 to 19);
pcd_1712(0 to 9) <= pcd40(20 to 29);
pcd_1713(0 to 9) <= pcd40(30 to 39);
pinvby(0) <= pduby_1710;
pinvby(1) <= pduby_1711;
pinvby(2) <= pduby_1712;
pinvby(3) <= pduby_1713;
pviol(0) <= pnduby_1710;
pviol(1) <= pnduby_1711;
pviol(2) <= pnduby_1712;
pviol(3) <= pnduby_1713;
pd36(0 to 8) <= pd_1710(0 to 8);
pd36(9 to 17) <= pd_1711(0 to 8);
pd36(18 to 26) <= pd_1712(0 to 8);
pd36(27 to 35) <= pd_1713(0 to 8);
pduby3 <= pinvby_1713;
pnduby3 <= pviol_1713;

i1720 : pndfby1 <= not pdfby1;
i1721 : pndfby2 <= not pdfby2;
i1722 : nduby3_last <= not pnduby3_last;
i1723 : npduby3_last <= not pduby3_last;
i1740 : pdfby0 <= (((not pndfby3_last) and (not pnduby3_last)) or (not npduby3_last));
i1741 : pndfby0 <= (((not pdfby3_last) and (not pduby3_last)) or (not nduby3_last));
i1742 : pdfby1 <= (((not pviol_1710) and (not pndfby0)) or (not npduby0));
i1724 : npduby0 <= not pinvby_1710;
i1750 : pdfby2 <= (pdfby0 and n0) or (nduby1 and pinvby_1710) or pinvby_1711;
i1730 : n0 <= not (pviol_1710 or pviol_1711);
i1725 : nduby1 <= not pviol_1711;
i1731 : n2 <= not (pviol_1710 or pviol_1711 or pviol_1712);
i1732 : n3 <= not (pviol_1712 or pviol_1711);
i1726 : nduby2 <= not pviol_1712;
i1733 : n4 <= not (pinvby_1710 or pinvby_1711 or pinvby_1712);
i1734 : n5 <= not (pinvby_1712 or pinvby_1711);
i1727 : npduby2 <= not pinvby_1712;
i1751 : pdfby3 <= (n2 and pdfby0) or (n3 and pinvby_1710) or (nduby2 and pinvby_1711) or pinvby_1712;
i1752 : pndfby3 <= (n4 and pndfby0) or (n5 and pviol_1710) or (npduby2 and pviol_1711) or pviol_1712;

i1710_10b8bdecode: figure_14
PORT MAP (
pcd => pcd_1710,
pd => pd_1710,
pndfby => pndfby_1710,
pdfby => pdfby_1710,
pviol => pviol_1710,
pinvby => pinvby_1710,
pduby => pduby_1710,
pnduby => pnduby_1710
);

i1711_10b8bdecode: figure_14
PORT MAP (
pcd => pcd_1711,
pd => pd_1711,
pndfby => pndfby_1711,
pdfby => pdfby_1711,
pviol => pviol_1711,
pinvby => pinvby_1711,
pduby => pduby_1711,
pnduby => pnduby_1711
);

i1712_10b8bdecode: figure_14
PORT MAP (
pcd => pcd_1712,
pd => pd_1712,
pndfby => pndfby_1712,
pdfby => pdfby_1712,
pviol => pviol_1712,
pinvby => pinvby_1712,
pduby => pduby_1712,
pnduby => pnduby_1712
);

i1713_10b8bdecode: figure_14
PORT MAP (
pcd => pcd_1713,
pd => pd_1713,
pndfby => pndfby_1713,
pdfby => pdfby_1713,
pviol => pviol_1713,
pinvby => pinvby_1713,
pduby => pduby_1713,
pnduby => pnduby_1713
);

end Behavioral;
