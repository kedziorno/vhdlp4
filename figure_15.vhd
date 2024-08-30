----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:29 09/16/2022 
-- Design Name: 
-- Module Name:    figure_15 - Behavioral 
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

entity figure_15 is
port (
pduby,pnduby,pinvby,pviol,pndfby : out std_logic;
pduby_last,pnduby_last,pndfby_last : in std_logic;
pcd : in std_logic_vector(0 to 9);
pd : out std_logic_vector(0 to 8)
);
end figure_15;

architecture Behavioral of figure_15 is

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

signal pcd_1510 : std_logic_vector(0 to 9) := (others => '0');
signal pndfby_1510 : std_logic := '0';
signal pdfby_1510 : std_logic := '0';

signal pd_1510 : std_logic_vector(0 to 8);
signal pviol_1510 : std_logic;
signal pinvby_1510 : std_logic;
signal pduby_1510 : std_logic;
signal pnduby_1510 : std_logic;
signal a,pdfby,npduby_last : std_logic;

begin

pndfby <= a;
pndfby_1510 <= a;
pdfby_1510 <= pdfby;
pcd_1510 <= pcd;
pduby <= pduby_1510;
pnduby <= pnduby_1510;
pd <= pd_1510;
pinvby <= pinvby_1510;
pviol <= pviol_1510;

i1521 : npduby_last <= not pduby_last;
i1520 : a <= not pdfby;
i1530 : pdfby <= (((not pnduby_last) and (not pndfby_last)) or (not npduby_last));

inst1510_10b8bdecode : figure_14
PORT MAP (
pcd => pcd_1510,
pd => pd_1510,
pndfby => pndfby_1510,
pdfby => pdfby_1510,
pviol => pviol_1510,
pinvby => pinvby_1510,
pduby => pduby_1510,
pnduby => pnduby_1510
);

end Behavioral;
