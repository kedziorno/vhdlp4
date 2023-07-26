--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package sata_defines is
  -- 6.7.4.2 p.93
  constant HOST_COMRESET_IDLE : integer := 320 ns;
  constant HOST_COMRESET_GEN1_UI_IDLE : integer := 480;
  constant HOST_COMRESET_IDLE_UI : real := HOST_COMRESET_IDLE/HOST_COMRESET_GEN1_UI_IDLE;
  
  constant HOST_COMRESET_BURST : integer := 106.7 ns;
  constant HOST_COMRESET_GEN1_UI_BURST : integer := 160;
  constant HOST_COMRESET_BURST_UI : real := HOST_COMRESET_BURST/HOST_COMRESET_GEN1_UI_BURST;
  
  constant HOST_COMRESET_COUNT : integer := 4;
  constant HOST_COMRESET_MAX : integer := 6; -- no less
  
  constant HOST_COMRESET_ALL : real := HOST_COMRESET_COUNT*(HOST_COMRESET_BURST+HOST_COMRESET_IDLE);
  
  constant HOST_COMRESET_FAIL_MIN : integer := 175 ns;
  constant HOST_COMRESET_FAIL_MAX : integer := 525 ns;
  
  -- figure 30 p. 93
  constant HOST_COMRESET_LOCK_NUM : integer := 3;
  constant HOST_COMRESET_RELEASE_NUM : integer := 6;
  constant HOST_CALIBRATE : integer := 2;
  constant HOST_COMWAKE_LOCK_NUM : integer := 5;
  constant HOST_COMWAKE_RELEASE_NUM : integer := HOST_COMWAKE_LOCK_NUM+HOST_CALIBRATE+HOST_COMWAKE_LOCK_NUM;
  constant HOST_D10.2_NUM : integer := 3;
  constant HOST_ALIGN : integer := 6;
  constant HOST_ALIGN_MAX : integer := 32768;
  -- 6. p.94
  constant DEV_COMWAKE_NUM : integer := 6;
  constant DEV_ALIGN_SEQ_NUM : integer := 2048;
  
  constant COMINIT_IDLE : integer := 320 ns;
  constant COMINIT_BURST : integer := 106.7 ns;
  constant COMWAKE_IDLE : integer := 106.7 ns;
  constant COMWAKE_BURST : integer := 106.7 ns;
  -- 6.7.4.4 p.96
  constant HOST_COMWAKE_COUNT : integer := 4;
  constant HOST_COMWAKE_MAX : integer := 6; -- no less
  
  constant HOST_COMWAKE_UI_BURST : integer := 160;
  constant HOST_COMWAKE_UI_IDLE : integer := 160;
  
  constant HOST_COMWAKE_ALL : integer := HOST_COMWAKE_MAX*(HOST_COMWAKE_BURST+HOST_COMWAKE_IDLE);
  
  constant HOST_COMWAKE_FAIL_MIN : integer := 55 ns;
  constant HOST_COMWAKE_FAIL_MAX : integer := 175 ns;

  constant GEN1_1_DWORD : time := 26.65 ns;
  constant GEN1_2048_DWORD : time := GEN1_1_DWORD * 2048; -- 56.6us
  constant GEN1_32768_DWORD : time := GEN1_1_DWORD * 32768; -- 880us

subtype enc10b8b is std_logic_vector (7 downto 0);
subtype enc8b10b is std_logic_vector (9 downto 0);

constant K28_5_P : enc8b10b := b"1100000101"; -- Align1 (K28.5) (rd+)
constant D10_2_P : enc8b10b := b"0101010101"; -- Align2,Align3 (D10.2) (rd+)
constant D27_3_P : enc8b10b := b"1101100011"; -- Align4 (D27.3) (rd+)

constant K28_5_N : enc8b10b := b"0011111010"; -- Align1 (K28.5) (rd-)
constant D10_2_N : enc8b10b := b"0101010101"; -- Align2,Align3 (D10.2) (rd-)
constant D27_3_N : enc8b10b := b"0010011100"; -- Align4 (D27.3) (rd-)

subtype ST_ALIGN_P of array (0 to 3) of enc8b10b;
subtype ST_ALIGN_N of array (0 to 3) of enc8b10b;

constant ALIGN_P : ST_ALIGN_P := (K28_5_P,D10_2_P,D10_2_P,D27_3_P);
constant ALIGN_N : ST_ALIGN_N := (K28_5_N,D10_2_N,D10_2_N,D27_3_N);

-- p.101 Figure 34 – Low transition density pattern
-- n=1
--1000110111 D17.7 (-) F1h
--1000011110 D30.7 (+) FEh
--0001111001 D7.1 (+) 27h
--0111001000 D14.7 (+) EEh
--0111100001 D30.7 (-) FEh
--1110000110 D7.6 (-) C7h
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
-- n>12
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
-- n=1
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
--0111100011 D30.3 (-) 7Eh
--1000011100 D30.3 (+) 7Eh
--1100011110 D3.7 (-) E3h
--0011100001 D28.7 (+) FCh
--1100011110 D3.7 (-) E3h
--0011100001 D28.7 (+) FCh

-- p. 102 Figure 35 - Half-rate / quarter-rate high transition density pattern
-- n>12
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
--1010101010 D21.5 (-) B5h
-- n>12
--1100110011 D24.3 (-) 78h
--0011001100 D24.3 (+) 78h
--1100110011 D24.3 (-) 78h
--0011001100 D24.3 (+) 78h
--1100110011 D24.3 (-) 78h
--0011001100 D24.3 (+) 78h
--1100110011 D24.3 (-) 78h
--0011001100 D24.3 (+) 78h
-- n>12
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
--0101010101 D10.2 (-) 4Ah
-- n>12
--1001100110 D25.6 (-) D9h 
--0110011001 D6.1 (-) 26h 
--1001100110 D25.6 (-) D9h 
--0110011001 D6.1 (-) 26h 
--1001100110 D25.6 (-) D9h 
--0110011001 D6.1 (-) 26h 
--1001100110 D25.6 (-) D9h 
--0110011001 D6.1 (-) 26h 

-- p. 103 Figure 36 – Low frequency spectral content pattern
-- n>12
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh 
--1101001010 D11.5 (-) ABh
-- n=1 
--1101001110 D11.7 (-) EBh
-- n>12
--0010110101 D20.2 (+) 54h 
--0010110101 D20.2 (+) 54h 
--0010110101 D20.2 (+) 54h 
--0010110101 D20.2 (+) 54h 
--0010110101 D20.2 (+) 54h 
--0010110101 D20.2 (+) 54h 
--0010110101 D20.2 (+) 54h 
-- n=1
--0010110101 D20.2 (+) 54h
--0010110101 D20.2 (+) 54h
--0010110101 D20.2 (+) 54h
--0010110001 D20.7 (+) F4h
--1101001010 D11.5 (-) ABh
--1101001010 D11.5 (-) ABh
--1101001010 D11.5 (-) ABh
--1101001010 D11.5 (-) ABh

-- p. 104 Figure 37 – Simultaneous switching outputs patterns
-- n>512
--1010110011 D31.3 (-) 7Fh 
--0101001100 D31.3 (+) 7Fh 
--1010110011 D31.3 (-) 7Fh 
--0101001100 D31.3 (+) 7Fh 
--1010110011 D31.3 (-) 7Fh 
--0101001100 D31.3 (+) 7Fh 
--1010110011 D31.3 (-) 7Fh 
--0101001100 D31.3 (+) 7Fh 

end sata_defines;

package body sata_defines is
end sata_defines;