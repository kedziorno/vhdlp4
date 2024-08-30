----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:21 09/14/2022 
-- Design Name: 
-- Module Name:    figure_10 - Behavioral 
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

entity figure_10a is
port (
pca,pcb,pcc,pcd,pce,pci : in std_logic;
p3x,px3 : in std_logic;
pcndn,neuei,penin : out std_logic;
ni,nk28,pinvr6 : out std_logic;
pa,pb,pc,pd,pe : out std_logic
);
end figure_10a;

architecture Behavioral of figure_10a is

signal a,b,c,d : std_logic;
signal nc,panbn,pab,pn8,paueb,pcued,pei,np040p40,nb,n0,n5,nd,na,pdioen,ne,penoin,n4,n6,n3,np3xi,n2,np3xei,n1,npx3enin,n7,pcpla,pcplb,pcplc,pcpld,pcple : std_logic;
begin

a1 : pcndn <= a;
a2 : neuei <= b;
a3 : penin <= c;
a1030 : panbn <= (not pca) and (not pcb);
a1050 : pab <= pca and pcb;
a1010 : pn8 <= (not pca) or (not pcb);
a1045 : paueb <= pca xor pcb;
a1001 : nc <= not pcc;
a1031 : a <= (not pcc) and (not pcd);
a1046 : pcued <= pcc xor pcd;
a1051 : d <= pcd and pcc;
a1035 : b <= not (pci xor pce);
a1032 : c <= (not pce) and (not pci);
a1052 : pei <= pce and pci;
a1060 : np040p40 <= not ((pab and d) or (panbn and a));
a1002 : nb <= not pcb;
a1011 : n0 <= not (b and pn8 and nc and pcd);
a1003 : nd <= not pcd;
a1070 : n5 <= not ((panbn or a) and c);
a1061 : nk28 <= not ((d and pei) or (a and c));
a1004 : ne <= not pce;
a1005 : na <= not pca;
a1006 : ni <= not pci;
a1065 : pdioen <= ((pcd and pci) or ne);
a1016 : penoin <= (not pci) or (not pce);
a1012 : n4 <= not (b and pcued and na and pcb);
a1013 : n6 <= not (b and pcued and nb and pca);
a1014 : n3 <= not (b and paueb and nd and pcc);
a1015 : np3xi <= not (p3x and pci);
a1062 : n2 <= not ((pab and pei) or (a and c));
a1017 : np3xei <= not (p3x and pei);
a1018 : n1 <= not (px3 and pdioen);
a1019 : npx3enin <= not (px3 and c);
a1020 : n7 <= not (px3 and penoin);
a1021 : pcpla <= (not n0) or (not n1) or (not np3xi) or (not n2);
a1022 : pcplb <= (not n3) or (not n1) or (not np3xi) or (not n2);
a1023 : pcplc <= (not n4) or (not n1) or (not np3xi) or (not n5);
a1024 : pcpld <= (not n6) or (not n1) or (not np3xi) or (not n2);
a1025 : pcple <= (not n0) or (not n5) or (not n7);
a1026 : pinvr6 <= (not np3xei) or (not npx3enin) or (not np040p40);
a1039 : pe <= not (ne xor pcple);
a1040 : pd <= not (pcpld xor nd);
a1036 : pa <= not (na xor pcpla);
a1037 : pb <= not (pcplb xor nb);
a1038 : pc <= not (pcplc xor p3x);

end Behavioral;
