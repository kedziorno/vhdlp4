----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:44 09/15/2022 
-- Design Name: 
-- Module Name:    figure_14 - Behavioral 
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

entity figure_14 is
port (
pcd : in std_logic_vector(0 to 9);
pd : out std_logic_vector(0 to 8);
pndfby,pdfby : in std_logic;
pviol,pinvby,pduby,pnduby : out std_logic
);
end figure_14;

architecture Behavioral of figure_14 is

COMPONENT figure_10b
PORT(
pca : IN  std_logic;
pcb : IN  std_logic;
pcc : IN  std_logic;
pcd : IN  std_logic;
pce : IN  std_logic;
pci : IN  std_logic;
pcndn : OUT  std_logic;
neuei : OUT  std_logic;
nk28 : OUT  std_logic;
pinvr6 : OUT  std_logic;
ni : OUT  std_logic;
pa : OUT  std_logic;
pb : OUT  std_logic;
pc : OUT  std_logic;
pd : OUT  std_logic;
pe : OUT  std_logic;
ndur6 : OUT  std_logic;
ndvby : OUT  std_logic;
p22 : OUT  std_logic;
npdur6 : OUT  std_logic;
penin : OUT  std_logic;
pdrr4 : IN  std_logic;
pndrr4 : IN  std_logic;
pdfby : IN  std_logic;
pndfby : IN  std_logic
);
END COMPONENT figure_10b;
for all : figure_10b use entity work.figure_10b(Behavioral);

signal pca_1410 : std_logic := '0';
signal pcb_1410 : std_logic := '0';
signal pcc_1410 : std_logic := '0';
signal pcd_1410 : std_logic := '0';
signal pce_1410 : std_logic := '0';
signal pci_1410 : std_logic := '0';
signal pdrr4_1410 : std_logic := '0';
signal pndrr4_1410 : std_logic := '0';
signal pdfby_1410 : std_logic := '0';
signal pndfby_1410 : std_logic := '0';

signal pcndn_1410 : std_logic;
signal neuei_1410 : std_logic;
signal nk28_1410 : std_logic;
signal pinvr6_1410 : std_logic;
signal ni_1410 : std_logic;
signal pa_1410 : std_logic;
signal pb_1410 : std_logic;
signal pc_1410 : std_logic;
signal pd_1410 : std_logic;
signal pe_1410 : std_logic;
signal ndur6_1410 : std_logic;
signal ndvby_1410 : std_logic;
signal p22_1410 : std_logic;
signal npdur6_1410 : std_logic;
signal penin_1410 : std_logic;

COMPONENT figure_13
PORT(
pcf : IN  std_logic;
pcg : IN  std_logic;
pch : IN  std_logic;
pcndn : IN  std_logic;
penin : IN  std_logic;
pci : IN  std_logic;
ni : IN  std_logic;
npdur6 : IN  std_logic;
ndur6 : IN  std_logic;
nk28 : IN  std_logic;
neuei : IN  std_logic;
p22 : IN  std_logic;
pcj : IN  std_logic;
ndv64 : OUT  std_logic;
pdrr4 : OUT  std_logic;
pf : OUT  std_logic;
pdur4 : OUT  std_logic;
pndur4 : OUT  std_logic;
nvkx7 : OUT  std_logic;
pk : OUT  std_logic;
ph : OUT  std_logic;
pg : OUT  std_logic;
pinvr4 : OUT  std_logic;
pndrr4 : OUT  std_logic
);
END COMPONENT;
for all : figure_13 use entity work.figure_13(Behavioral);

signal pcf_1420 : std_logic := '0';
signal pcg_1420 : std_logic := '0';
signal pch_1420 : std_logic := '0';
signal pcndn_1420 : std_logic := '0';
signal penin_1420 : std_logic := '0';
signal pci_1420 : std_logic := '0';
signal ni_1420 : std_logic := '0';
signal npdur6_1420 : std_logic := '0';
signal ndur6_1420 : std_logic := '0';
signal nk28_1420 : std_logic := '0';
signal neuei_1420 : std_logic := '0';
signal p22_1420 : std_logic := '0';
signal pcj_1420 : std_logic := '0';

signal ndv64_1420 : std_logic;
signal pdrr4_1420 : std_logic;
signal pf_1420 : std_logic;
signal pdur4_1420 : std_logic;
signal pndur4_1420 : std_logic;
signal nvkx7_1420 : std_logic;
signal pk_1420 : std_logic;
signal ph_1420 : std_logic;
signal pg_1420 : std_logic;
signal pinvr4_1420 : std_logic;
signal pndrr4_1420 : std_logic;

signal ninvr6or4 : std_logic;
signal npdur4,ndur4 : std_logic;

begin

pndfby_1410 <= pndfby;
pdfby_1410 <= pdfby;
pdrr4_1410 <= pdrr4_1420;
pndrr4_1410 <= pndrr4_1420;
ndur6_1420 <= ndur6_1410;
npdur6_1420 <= npdur6_1410;

pca_1410 <= pcd(0);
pcb_1410 <= pcd(1);
pcc_1410 <= pcd(2);
pcd_1410 <= pcd(3);
pce_1410 <= pcd(4);
pci_1410 <= pcd(5);
pci_1420 <= pcd(5);
pcf_1420 <= pcd(6);
pcg_1420 <= pcd(7);
pch_1420 <= pcd(8);
pcj_1420 <= pcd(9);
pd(0) <= pa_1410;
pd(1) <= pb_1410;
pd(2) <= pc_1410;
pd(3) <= pd_1410;
pd(4) <= pe_1410;
pd(5) <= pf_1420;
pd(6) <= pg_1420;
pd(7) <= ph_1420;
pd(8) <= pk_1420;
ni_1420 <= ni_1410;
p22_1420 <= p22_1410;
nk28_1420 <= nk28_1410;
neuei_1420 <= neuei_1410;
penin_1420 <= penin_1410;
pcndn_1420 <= pcndn_1410;

i1450 : ninvr6or4 <= not (pinvr6_1410 or pinvr4_1420);
i1440 : pviol <= (not ndvby_1410) or (not ndv64_1420) or (not ninvr6or4) or (not nvkx7_1420);
i1441 : pinvby <= (not ndv64_1420) or (not ninvr6or4) or (not nvkx7_1420);
i1430 : npdur4 <= not pdur4_1420;
i1431 : ndur4 <= not pndur4_1420;
i1460 : pduby <= ((not npdur4) or ((not npdur6_1410) and (not pndur4_1420))); -- XXX
i1461 : pnduby <= ((not ndur4) or ((not ndur6_1410) and (not pdur4_1420))); -- XXX

inst1410_6b5b_decode : figure_10b PORT MAP (
pca => pca_1410,
pcb => pcb_1410,
pcc => pcc_1410,
pcd => pcd_1410,
pce => pce_1410,
pci => pci_1410,
pcndn => pcndn_1410,
neuei => neuei_1410,
nk28 => nk28_1410,
pinvr6 => pinvr6_1410,
ni => ni_1410,
pa => pa_1410,
pb => pb_1410,
pc => pc_1410,
pd => pd_1410,
pe => pe_1410,
ndur6 => ndur6_1410,
ndvby => ndvby_1410,
p22 => p22_1410,
npdur6 => npdur6_1410,
penin => penin_1410,
pdrr4 => pdrr4_1410,
pndrr4 => pndrr4_1410,
pdfby => pdfby_1410,
pndfby => pndfby_1410
);

inst1420_4b3b_decode : figure_13 PORT MAP (
pcf => pcf_1420,
pcg => pcg_1420,
pch => pch_1420,
pcndn => pcndn_1420,
penin => penin_1420,
pci => pci_1420,
ni => ni_1420,
npdur6 => npdur6_1420,
ndur6 => ndur6_1420,
nk28 => nk28_1420,
neuei => neuei_1420,
p22 => p22_1420,
pcj => pcj_1420,
ndv64 => ndv64_1420,
pdrr4 => pdrr4_1420,
pf => pf_1420,
pdur4 => pdur4_1420,
pndur4 => pndur4_1420,
nvkx7 => nvkx7_1420,
pk => pk_1420,
ph => ph_1420,
pg => pg_1420,
pinvr4 => pinvr4_1420,
pndrr4 => pndrr4_1420
);

end Behavioral;
