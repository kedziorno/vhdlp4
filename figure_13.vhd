----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:20 09/15/2022 
-- Design Name: 
-- Module Name:    figure_13 - Behavioral 
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

entity figure_13 is
port (
pcf,pcg,pch,pcndn,penin,pci,ni,npdur6,ndur6,nk28,neuei,p22,pcj : in std_logic;
ndv64,pdrr4,pf,pdur4,pndur4,nvkx7,pk,ph,pg,pinvr4,pndrr4 : out std_logic
);
end figure_13;

architecture Behavioral of figure_13 is

signal nf,nhj,nhuej,nfg,pfeg,nj,pfueg,pgeh,pfgn,niueg,pm10,nh,ng,njfeg,m7,nfegehej,m2,nfngn,phj,m0,nhnjnfueg,pdur6,pndur6,pcplf,pcplg,pcplh,m5,nkx7,neeiefegeh,piueg,m6 : std_logic;
signal a,b : std_logic;

begin

c1 : pndrr4 <= a;
c2 : pdrr4 <= b;
c1301 : nf <= not pcf;
c1310 : nhj <= not (pch and pcj);
c1340 : nhuej <= not (pch xor pcj);
c1311 : nfg <= not (pcf and pcg);
c1341 : pfeg <= not (pcf xor pcg);
c1302 : nj <= not pcj;
c1350 : pfueg <= (pcf xor pcg);
c1342 : pgeh <= (pcg xor pch);
c1335 : pfgn <= (not nf) and (not pcg);
c1343 : niueg <= not (pcg xor pci);
c1360 : pm10 <= (ng and nh) or (nj and ni) or (pci and pcg) or (pch and pcj);
c1303 : ng <= not pcg;
c1312 : njfeg <= not (pfeg and pcj);
c1355 : m7 <= not (nhuej and pcndn and penin);
c1313 : nfegehej <= not (nhuej and pgeh and pfeg);
c1314 : m2 <= not (nhuej and pfgn);
c1317 : nfngn <= not (ng and nf);
c1305 : phj <= not nhj;
c1316 : m0 <= not (phj and pfueg);
c1304 : nh <= not pch;
c1315 : nhnjnfueg <= not (pfueg and nj and nh);
c1306 : pdur6 <= not npdur6;
c1307 : pndur6 <= not ndur6;
c1318 : pcplf <= (not m7) or (not m0) or (not njfeg);
c1370 : pdur4 <= ((not nhj) or ((not nhuej) and (not nfg))); -- XXX
c1319 : a <= (not m0) or (not nfg);
c1371 : pndur4 <= (((not nhuej) and (not nfngn)) or ((not pch) and (not pcj))); -- XXX
c1320 : pcplg <= (not m7) or (not njfeg) or (not nhnjnfueg);
c1321 : pcplh <= (not m7) or (not njfeg) or (not m2);
c1356 : m5 <= not (pfeg and pgeh and (not nk28));
c1322 : nvkx7 <= not (p22 and neuei and pm10);
c1357 : nkx7 <= not (pm10 and (not neuei));
c1365 : ndv64 <= not ((pdur6 and a) or (pndur6 and b)); -- XXX
c1344 : pf <= not (nf xor pcplf);
c1327 : b <= (not nhnjnfueg) or (not nfngn); -- XXX
c1326 : pinvr4 <= (not m6) or (not m5) or (not nfegehej) or (not neeiefegeh);
c1345 : pg <= not (ng xor pcplg);
c1346 : ph <= not (nh xor pcplh);
c1325 : neeiefegeh <= not (pfeg and pgeh and neuei and niueg);
c1308 : piueg <= not niueg;
c1323 : pk <= (not nk28) or (not nkx7);
c1324 : m6 <= not (nk28 and nhuej and pgeh and piueg);


end Behavioral;

