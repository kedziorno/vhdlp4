----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:35 09/16/2022 
-- Design Name: 
-- Module Name:    figure_16 - Behavioral 
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

entity figure_16 is
port (
pdfby : in std_logic;
pinvby,pviol,pdeby : out std_logic;
pcd : in std_logic_vector(0 to 9);
pd : out std_logic_vector(0 to 8)
);
end figure_16;

architecture Behavioral of figure_16 is

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
END COMPONENT figure_14;
for all : figure_14 use entity work.figure_14(Behavioral);

signal pcd_1610 : std_logic_vector(0 to 9) := (others => '0');
signal pndfby_1610 : std_logic := '0';
signal pdfby_1610 : std_logic := '0';

signal pd_1610 : std_logic_vector(0 to 8);
signal pviol_1610 : std_logic;
signal pinvby_1610 : std_logic;
signal pduby_1610 : std_logic;
signal pnduby_1610 : std_logic;

signal pduby,pnduby,pndfby,npduby : std_logic;

begin

pdfby_1610 <= pdfby;
pndfby_1610 <= pndfby;
pduby <= pduby_1610;
pnduby <= pnduby_1610;
pd <= pd_1610;
pinvby <= pinvby_1610;
pviol <= pviol_1610;
pcd_1610 <= pcd;

i1620 : pndfby <= not pdfby;
i1621 : npduby <= not pduby;
i1630 : pdeby <= (((not pnduby) and (not pndfby)) or (not npduby));

inst1610_10b8bdecode : figure_14
PORT MAP (
pcd => pcd_1610,
pd => pd_1610,
pndfby => pndfby_1610,
pdfby => pdfby_1610,
pviol => pviol_1610,
pinvby => pinvby_1610,
pduby => pduby_1610,
pnduby => pnduby_1610
);

end Behavioral;
