--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: enc8b10b_synthesis.vhd
-- /___/   /\     Timestamp: Sun Dec  3 22:27:52 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm enc8b10b -w -dir netgen/synthesis -ofmt vhdl -sim enc8b10b.ngc enc8b10b_synthesis.vhd 
-- Device	: xc5vlx330t-2-ff1738
-- Input file	: enc8b10b.ngc
-- Output file	: /home/user/workspace/raid/netgen/synthesis/enc8b10b_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: enc8b10b
-- Xilinx	: /home/user/.local/Xilinx/10.1/ISE/ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity enc8b10b is
  port (
    ncmpls6 : in STD_LOGIC := 'X'; 
    pcwpls4 : in STD_LOGIC := 'X'; 
    PA : in STD_LOGIC := 'X'; 
    PB : in STD_LOGIC := 'X'; 
    PC : in STD_LOGIC := 'X'; 
    PD : in STD_LOGIC := 'X'; 
    PE : in STD_LOGIC := 'X'; 
    pf : in STD_LOGIC := 'X'; 
    pca : out STD_LOGIC; 
    PG : in STD_LOGIC := 'X'; 
    pcb : out STD_LOGIC; 
    ph : in STD_LOGIC := 'X'; 
    pcc : out STD_LOGIC; 
    pcd : out STD_LOGIC; 
    pce : out STD_LOGIC; 
    pk : in STD_LOGIC := 'X'; 
    pcf : out STD_LOGIC; 
    pndfs6 : in STD_LOGIC := 'X'; 
    pcg : out STD_LOGIC; 
    pch : out STD_LOGIC; 
    pci : out STD_LOGIC; 
    pcj : out STD_LOGIC 
  );
end enc8b10b;

architecture Structure of enc8b10b is
  signal PA_IBUF_1 : STD_LOGIC; 
  signal PB_IBUF_3 : STD_LOGIC; 
  signal PC_IBUF_5 : STD_LOGIC; 
  signal PD_IBUF_7 : STD_LOGIC; 
  signal PE_IBUF_9 : STD_LOGIC; 
  signal PG_IBUF_11 : STD_LOGIC; 
  signal PL30 : STD_LOGIC; 
  signal XLXN_18 : STD_LOGIC; 
  signal XLXN_23 : STD_LOGIC; 
  signal XLXN_24 : STD_LOGIC; 
  signal XLXN_4 : STD_LOGIC; 
  signal XLXN_5 : STD_LOGIC; 
  signal XLXN_55 : STD_LOGIC; 
  signal XLXN_57 : STD_LOGIC; 
  signal XLXN_58 : STD_LOGIC; 
  signal XLXN_6 : STD_LOGIC; 
  signal XLXN_64 : STD_LOGIC; 
  signal XLXN_65 : STD_LOGIC; 
  signal XLXN_7 : STD_LOGIC; 
  signal XLXN_8 : STD_LOGIC; 
  signal XLXN_9 : STD_LOGIC; 
  signal XLXN_93 : STD_LOGIC; 
  signal XLXN_94 : STD_LOGIC; 
  signal XLXN_95 : STD_LOGIC; 
  signal XLXN_96 : STD_LOGIC; 
  signal XLXN_97 : STD_LOGIC; 
  signal XLXN_99 : STD_LOGIC; 
  signal n10 : STD_LOGIC; 
  signal n6 : STD_LOGIC; 
  signal n8 : STD_LOGIC; 
  signal n9 : STD_LOGIC; 
  signal nbb : STD_LOGIC; 
  signal nbc : STD_LOGIC; 
  signal nbd : STD_LOGIC; 
  signal nbg : STD_LOGIC; 
  signal ncmpls6_IBUF_42 : STD_LOGIC; 
  signal nd : STD_LOGIC; 
  signal nde : STD_LOGIC; 
  signal nden : STD_LOGIC; 
  signal ndne : STD_LOGIC; 
  signal ne : STD_LOGIC; 
  signal nf : STD_LOGIC; 
  signal nfgh : STD_LOGIC; 
  signal nfghk : STD_LOGIC; 
  signal nj : STD_LOGIC; 
  signal nk : STD_LOGIC; 
  signal nl03d : STD_LOGIC; 
  signal nl03den : STD_LOGIC; 
  signal nl12dnen : STD_LOGIC; 
  signal nl30d : STD_LOGIC; 
  signal pbe : STD_LOGIC; 
  signal pbf : STD_LOGIC; 
  signal pbi : STD_LOGIC; 
  signal pca_OBUF_61 : STD_LOGIC; 
  signal pcb_OBUF_63 : STD_LOGIC; 
  signal pcc_OBUF_65 : STD_LOGIC; 
  signal pcd_OBUF_67 : STD_LOGIC; 
  signal pce_OBUF_69 : STD_LOGIC; 
  signal pcf_OBUF_71 : STD_LOGIC; 
  signal pcg_OBUF_73 : STD_LOGIC; 
  signal pch_OBUF_75 : STD_LOGIC; 
  signal pci_OBUF_77 : STD_LOGIC; 
  signal pcj_OBUF_79 : STD_LOGIC; 
  signal pcwpls4_IBUF_81 : STD_LOGIC; 
  signal pde : STD_LOGIC; 
  signal pdenfgh : STD_LOGIC; 
  signal pdfs6 : STD_LOGIC; 
  signal pdne : STD_LOGIC; 
  signal pdnefgh : STD_LOGIC; 
  signal pdnen : STD_LOGIC; 
  signal peodn : STD_LOGIC; 
  signal pf_IBUF_90 : STD_LOGIC; 
  signal pfgh : STD_LOGIC; 
  signal pfghasak : STD_LOGIC; 
  signal pfnhn : STD_LOGIC; 
  signal pfueg : STD_LOGIC; 
  signal ph_IBUF_96 : STD_LOGIC; 
  signal pk_IBUF_98 : STD_LOGIC; 
  signal pkoduee : STD_LOGIC; 
  signal pl03 : STD_LOGIC; 
  signal pl12 : STD_LOGIC; 
  signal pl21 : STD_LOGIC; 
  signal pndfs6_IBUF_104 : STD_LOGIC; 
begin
  A301 : INV
    port map (
      I => PB_IBUF_3,
      O => XLXN_18
    );
  A302 : INV
    port map (
      I => PA_IBUF_1,
      O => XLXN_24
    );
  A303 : INV
    port map (
      I => PC_IBUF_5,
      O => XLXN_23
    );
  a305 : INV
    port map (
      I => pf_IBUF_90,
      O => nf
    );
  a307 : INV
    port map (
      I => nde,
      O => pde
    );
  a308 : INV
    port map (
      I => nfgh,
      O => pfgh
    );
  a309 : INV
    port map (
      I => pk_IBUF_98,
      O => nk
    );
  a310 : INV
    port map (
      I => pndfs6_IBUF_104,
      O => pdfs6
    );
  a311 : INV
    port map (
      I => pdne,
      O => ndne
    );
  a321 : NAND3
    port map (
      I0 => ph_IBUF_96,
      I1 => PG_IBUF_11,
      I2 => pf_IBUF_90,
      O => nfgh
    );
  a324 : NAND2
    port map (
      I0 => PD_IBUF_7,
      I1 => PL30,
      O => nl30d
    );
  a325 : NOR2
    port map (
      I0 => PD_IBUF_7,
      I1 => ne,
      O => peodn
    );
  a326 : NAND3
    port map (
      I0 => ne,
      I1 => nd,
      I2 => PD_IBUF_7,
      O => nl12dnen
    );
  a327 : NAND2
    port map (
      I0 => PD_IBUF_7,
      I1 => pl03,
      O => nl03d
    );
  a328 : NAND2
    port map (
      I0 => PE_IBUF_9,
      I1 => PD_IBUF_7,
      O => nde
    );
  a329 : NAND2
    port map (
      I0 => PD_IBUF_7,
      I1 => ne,
      O => nden
    );
  a330 : NAND3
    port map (
      I0 => PD_IBUF_7,
      I1 => ne,
      I2 => pl03,
      O => nl03den
    );
  a331 : NAND2
    port map (
      I0 => PE_IBUF_9,
      I1 => nl03d,
      O => n6
    );
  a332 : NAND2
    port map (
      I0 => PD_IBUF_7,
      I1 => nl30d,
      O => nbd
    );
  a333 : OR3B3
    port map (
      I0 => nl03den,
      I1 => n6,
      I2 => nl12dnen,
      O => pbe
    );
  a334 : OR3B3
    port map (
      I0 => nk,
      I1 => ndne,
      I2 => nden,
      O => pkoduee
    );
  a335 : NAND3
    port map (
      I0 => pdnefgh,
      I1 => pl12,
      I2 => pndfs6_IBUF_104,
      O => n8
    );
  a336 : NAND3
    port map (
      I0 => pdenfgh,
      I1 => pl21,
      I2 => pdfs6,
      O => n9
    );
  a337 : OR3B3
    port map (
      I0 => nfghk,
      I1 => n9,
      I2 => n8,
      O => pfghasak
    );
  a339 : NAND2
    port map (
      I0 => pk_IBUF_98,
      I1 => pfgh,
      O => nfghk
    );
  a346 : AND2B2
    port map (
      I0 => ph_IBUF_96,
      I1 => pf_IBUF_90,
      O => pfnhn
    );
  a351 : AND2B2
    port map (
      I0 => PE_IBUF_9,
      I1 => PD_IBUF_7,
      O => pdnen
    );
  a352 : AND2B2
    port map (
      I0 => PD_IBUF_7,
      I1 => ne,
      O => pdne
    );
  a353 : AND2B2
    port map (
      I0 => nden,
      I1 => nfgh,
      O => pdenfgh
    );
  a354 : AND2B2
    port map (
      I0 => nfgh,
      I1 => ndne,
      O => pdnefgh
    );
  a358 : XNOR2
    port map (
      I0 => ncmpls6_IBUF_42,
      I1 => pbe,
      O => pce_OBUF_69
    );
  a359 : XNOR2
    port map (
      I0 => ncmpls6_IBUF_42,
      I1 => pbi,
      O => pci_OBUF_77
    );
  a367 : XOR2
    port map (
      I0 => ncmpls6_IBUF_42,
      I1 => nbb,
      O => pcb_OBUF_63
    );
  a368 : XOR2
    port map (
      I0 => ncmpls6_IBUF_42,
      I1 => nbc,
      O => pcc_OBUF_65
    );
  a369 : XOR2
    port map (
      I0 => ncmpls6_IBUF_42,
      I1 => nbd,
      O => pcd_OBUF_67
    );
  a375 : AND2B1
    port map (
      I0 => ph_IBUF_96,
      I1 => pfueg,
      O => n10
    );
  XLXI_1 : NAND3
    port map (
      I0 => PA_IBUF_1,
      I1 => XLXN_23,
      I2 => XLXN_18,
      O => XLXN_5
    );
  XLXI_2 : NAND3
    port map (
      I0 => PB_IBUF_3,
      I1 => XLXN_23,
      I2 => XLXN_24,
      O => XLXN_4
    );
  XLXI_3 : NAND3
    port map (
      I0 => PC_IBUF_5,
      I1 => XLXN_24,
      I2 => XLXN_18,
      O => XLXN_6
    );
  XLXI_4 : AND3B3
    port map (
      I0 => XLXN_24,
      I1 => XLXN_18,
      I2 => XLXN_23,
      O => PL30
    );
  XLXI_5 : NAND3
    port map (
      I0 => PA_IBUF_1,
      I1 => PB_IBUF_3,
      I2 => XLXN_23,
      O => XLXN_8
    );
  XLXI_6 : NAND3
    port map (
      I0 => PA_IBUF_1,
      I1 => PC_IBUF_5,
      I2 => XLXN_18,
      O => XLXN_7
    );
  XLXI_7 : NAND3
    port map (
      I0 => XLXN_24,
      I1 => PB_IBUF_3,
      I2 => PA_IBUF_1,
      O => XLXN_9
    );
  XLXI_8 : OR3B3
    port map (
      I0 => XLXN_6,
      I1 => XLXN_4,
      I2 => XLXN_5,
      O => pl12
    );
  XLXI_9 : OR3B3
    port map (
      I0 => XLXN_9,
      I1 => XLXN_7,
      I2 => XLXN_8,
      O => pl21
    );
  XLXI_19 : AND3B3
    port map (
      I0 => PA_IBUF_1,
      I1 => PB_IBUF_3,
      I2 => PC_IBUF_5,
      O => pl03
    );
  XLXI_20 : INV
    port map (
      I => PD_IBUF_7,
      O => nd
    );
  XLXI_22 : INV
    port map (
      I => PE_IBUF_9,
      O => ne
    );
  XLXI_27 : XOR2
    port map (
      I0 => pf_IBUF_90,
      I1 => PG_IBUF_11,
      O => pfueg
    );
  XLXI_28 : AND2B2
    port map (
      I0 => nf,
      I1 => pfghasak,
      O => pbf
    );
  XLXI_29 : NOR2
    port map (
      I0 => PG_IBUF_11,
      I1 => pfnhn,
      O => nbg
    );
  XLXI_30 : NOR2
    port map (
      I0 => pfghasak,
      I1 => n10,
      O => nj
    );
  XLXI_31 : XOR2
    port map (
      I0 => pcwpls4_IBUF_81,
      I1 => pbf,
      O => pcf_OBUF_71
    );
  XLXI_32 : XOR2
    port map (
      I0 => pcwpls4_IBUF_81,
      I1 => nbg,
      O => pcg_OBUF_73
    );
  XLXI_33 : XOR2
    port map (
      I0 => pcwpls4_IBUF_81,
      I1 => ph_IBUF_96,
      O => pch_OBUF_75
    );
  XLXI_34 : XOR2
    port map (
      I0 => pcwpls4_IBUF_81,
      I1 => nj,
      O => pcj_OBUF_79
    );
  XLXI_45 : AND2
    port map (
      I0 => PB_IBUF_3,
      I1 => nl30d,
      O => XLXN_57
    );
  XLXI_46 : AND2
    port map (
      I0 => nd,
      I1 => pl03,
      O => XLXN_58
    );
  XLXI_47 : OR2
    port map (
      I0 => XLXN_58,
      I1 => XLXN_57,
      O => XLXN_55
    );
  XLXI_48 : INV
    port map (
      I => XLXN_55,
      O => nbb
    );
  XLXI_49 : OR2
    port map (
      I0 => PC_IBUF_5,
      I1 => XLXN_65,
      O => XLXN_64
    );
  XLXI_51 : AND2
    port map (
      I0 => peodn,
      I1 => pl03,
      O => XLXN_65
    );
  XLXI_52 : INV
    port map (
      I => XLXN_64,
      O => nbc
    );
  XLXI_59 : AND2
    port map (
      I0 => pdnen,
      I1 => pl21,
      O => XLXN_93
    );
  XLXI_60 : AND2
    port map (
      I0 => pkoduee,
      I1 => pl12,
      O => XLXN_95
    );
  XLXI_61 : AND2
    port map (
      I0 => pdne,
      I1 => pl03,
      O => XLXN_94
    );
  XLXI_62 : AND2
    port map (
      I0 => pde,
      I1 => PL30,
      O => XLXN_96
    );
  XLXI_63 : OR2
    port map (
      I0 => XLXN_95,
      I1 => XLXN_93,
      O => XLXN_97
    );
  XLXI_64 : OR2
    port map (
      I0 => XLXN_96,
      I1 => XLXN_94,
      O => XLXN_99
    );
  XLXI_65 : OR2
    port map (
      I0 => XLXN_99,
      I1 => XLXN_97,
      O => pbi
    );
  XLXI_72 : XNOR2
    port map (
      I0 => ncmpls6_IBUF_42,
      I1 => PA_IBUF_1,
      O => pca_OBUF_61
    );
  ncmpls6_IBUF : IBUF
    port map (
      I => ncmpls6,
      O => ncmpls6_IBUF_42
    );
  pcwpls4_IBUF : IBUF
    port map (
      I => pcwpls4,
      O => pcwpls4_IBUF_81
    );
  PA_IBUF : IBUF
    port map (
      I => PA,
      O => PA_IBUF_1
    );
  PB_IBUF : IBUF
    port map (
      I => PB,
      O => PB_IBUF_3
    );
  PC_IBUF : IBUF
    port map (
      I => PC,
      O => PC_IBUF_5
    );
  PD_IBUF : IBUF
    port map (
      I => PD,
      O => PD_IBUF_7
    );
  PE_IBUF : IBUF
    port map (
      I => PE,
      O => PE_IBUF_9
    );
  pf_IBUF : IBUF
    port map (
      I => pf,
      O => pf_IBUF_90
    );
  PG_IBUF : IBUF
    port map (
      I => PG,
      O => PG_IBUF_11
    );
  ph_IBUF : IBUF
    port map (
      I => ph,
      O => ph_IBUF_96
    );
  pk_IBUF : IBUF
    port map (
      I => pk,
      O => pk_IBUF_98
    );
  pndfs6_IBUF : IBUF
    port map (
      I => pndfs6,
      O => pndfs6_IBUF_104
    );
  pca_OBUF : OBUF
    port map (
      I => pca_OBUF_61,
      O => pca
    );
  pcb_OBUF : OBUF
    port map (
      I => pcb_OBUF_63,
      O => pcb
    );
  pcc_OBUF : OBUF
    port map (
      I => pcc_OBUF_65,
      O => pcc
    );
  pcd_OBUF : OBUF
    port map (
      I => pcd_OBUF_67,
      O => pcd
    );
  pce_OBUF : OBUF
    port map (
      I => pce_OBUF_69,
      O => pce
    );
  pcf_OBUF : OBUF
    port map (
      I => pcf_OBUF_71,
      O => pcf
    );
  pcg_OBUF : OBUF
    port map (
      I => pcg_OBUF_73,
      O => pcg
    );
  pch_OBUF : OBUF
    port map (
      I => pch_OBUF_75,
      O => pch
    );
  pci_OBUF : OBUF
    port map (
      I => pci_OBUF_77,
      O => pci
    );
  pcj_OBUF : OBUF
    port map (
      I => pcj_OBUF_79,
      O => pcj
    );

end Structure;

