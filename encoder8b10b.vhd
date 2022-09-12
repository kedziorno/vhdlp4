----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:56:03 09/12/2022 
-- Design Name: 
-- Module Name:    encoder8b10b - Behavioral 
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

entity encoder8b10b is
port (
pcmpls4,pndfs6,ncmpls6 : in std_logic;
pk : in std_logic;
ipt : in std_logic_vector(7 downto 0);
opt : out std_logic_vector(9 downto 0)
);
end entity encoder8b10b;

-- XXX US6977599.pdf
-- XXX 8B/10B ENCODING AND DECODING FOR HIGH SPEED APPLICATIONS
architecture Behavioral of encoder8b10b is
	signal pa,pb,pc,pd,pe,pf,pg,ph : std_logic;
	signal pca,pcb,pcc,pcd,pce,pcf,pcg,pch,pci,pcj : std_logic;
	signal na,nb,nc,nd,ne,nf : std_logic;
	signal n10,n9,n8,n6,n5,n4,n3,n2,n1,n0 : std_logic;
	signal a0,a2,a4 : std_logic;
	signal pl03,pl30,pl21,pfnhn,pbf,nbg,nj,nl30d,peodn,nl12dnen,nl03d,pdnen,pdne,nde,nden,nbb,pfgh,nl03den,pde,nbcpeodn,pbi,pkoduee,pdenfgh,nbc,nbd,pbe,pbipfgh,nfgh,nk,nfghk,pfghasak,pdfs6,ndne,pfghnk,pdnefgh,pl12 : std_logic;
begin
	aa1 : pa <= ipt(0);
	aa2 : pb <= ipt(1);
	aa3 : pc <= ipt(2);
	aa4 : pd <= ipt(3);
	aa5 : pe <= ipt(4);
	aa6 : pf <= ipt(5);
	aa7 : pg <= ipt(6);
	aa8 : ph <= ipt(7);
	bb1 : opt(0) <= pca;
	bb2 : opt(1) <= pcb;
	bb3 : opt(2) <= pcc;
	bb4 : opt(3) <= pcd;
	bb5 : opt(4) <= pce;
	bb6 : opt(5) <= pci;
	bb7 : opt(6) <= pcf;
	bb8 : opt(7) <= pcg;
	bb9 : opt(8) <= pch;
	bb10 : opt(9) <= pcj;
	a301 : nb <= not pb;
	a302 : na <= not pa;
	a303 : nc <= not pc;
	a345 : pl03 <= (not pa) and (not pb) and (not pc);
	a320 : n5 <= not (na and pb and pc);
	a319 : n4 <= not (nb and pc and pa);
	a318 : n3 <= not (nc and pa and pb);
	a350 : pl30 <= na and nb and nc;
	a317 : n2 <= not (pc and na and nb);
	a316 : n1 <= not (na and nc and pb);
	a315 : n0 <= not (nb and nb and pa);
	a323 : pl21 <= (not n3) or (not n4) or (not n5);
	a322 : a0 <= (not n0) or (not n1) or (not n2);
	a304 : nd <= not pd;
	a306 : ne <= not pe;
	a305 : nf <= not pf;
	a321 : nfgh <= not (pf and pg and ph);
	a346 : pfnhn <= (not pf) and (not ph);
	a375 : n10 <= a2 and (not ph);
	a370 : a2 <= pf xor pg;
	a349 : pbf <= (not pfghasak) and (not nf);
	a348 : nbg <= not (pfnhn or pg);
	a347 : nj <= not (n10 or pfghasak);
	a365 : pcf <= pcmpls4 xor pbf;
	a355 : pcg <= not (pcmpls4 xor nbg);
	a366 : pch <= pcmpls4 xor ph;
	a356 : pcj <= not (pcmpls4 xor nj);
	a324 : nl30d <= not (pl30 and pd);
	a325 : peodn <= (not ne) or (not pd);
	a326 : nl12dnen <= not (pd and nd and ne);
	a327 : nl03d <= not (pl03 and pd);
	a351 : pdnen <= (not pd) and (not pe);
	a352 : pdne <= (not ne) and (not pd);
	a328 : nde <= not (pd and pe);
	a329 : nden <= not (pd and ne);
	a380 : nbb <= not ((nl30d and pb) or (pl03 and nd));
	a332 : nbd <= not (nl30d and pd);
	a331 : n6 <= not (nl03d and pe);
	a330 : nl03den <= not (pl03 and ne and pd);
	a307 : pde <= not nde;
	a311 : ndne <= not pdne;
	a381 : nbc <= not ((pl03 and peodn) or pc);
	a333 : pbe <= (not nl12dnen) or (not n6) or (not nl03den);
	a385 : pbi <= ((pl21 and pdnen) or (a0 and pkoduee) or (pl03 and pdne) or (pl30 and pde));
	a353 : pdenfgh <= (not nfgh) and (not nden);
	a357 : pca <= not (ncmpls6 xor pa);
	a367 : pcb <= ncmpls6 xor nbb;
	a368 : pcc <= ncmpls6 xor nbc;
	a369 : pcd <= ncmpls6 xor nbd;
	a358 : pce <= not (ncmpls6 xor pbe);
	a359 : pci <= not (ncmpls6 xor pbi);
	a334 : pkoduee <= (not nden) or (not ndne) or (not nk);
	a308 : pfgh <= not nfgh;
	a309 : nk <= not pk;
	a354 : pdnefgh <= (not ndne) and (not nfgh);
	a339 : nfghk <= not (pfgh and pk);
	a337 : pfghasak <= (not n8) or (not n9) or (not nfghk);
	a336 : n9 <= not (pdfs6 and pl21 and pdenfgh);
	a335 : n8 <= not (pndfs6 and pl12 and pdnefgh);
	a310 : pdfs6 <= not pndfs6;
	
end architecture Behavioral;
