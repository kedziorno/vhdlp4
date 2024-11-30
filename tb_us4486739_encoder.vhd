-- Vhdl test bench created from schematic /home/user/workspace/raid/us4486739_encoder.sch - Thu Dec 14 16:31:56 2023
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY us4486739_encoder_us4486739_encoder_sch_tb IS
END us4486739_encoder_us4486739_encoder_sch_tb;
ARCHITECTURE behavioral OF us4486739_encoder_us4486739_encoder_sch_tb IS 

COMPONENT us4486739_encoder
PORT( inputA	:	IN	STD_LOGIC; 
inputB	:	IN	STD_LOGIC; 
inputC	:	IN	STD_LOGIC; 
inputD	:	IN	STD_LOGIC; 
inputE	:	IN	STD_LOGIC; 
inputF	:	IN	STD_LOGIC; 
inputG	:	IN	STD_LOGIC; 
inputH	:	IN	STD_LOGIC; 
inputK	:	IN	STD_LOGIC; 
CLOCK	:	IN	STD_LOGIC; 
outputA	:	OUT	STD_LOGIC; 
outputB	:	OUT	STD_LOGIC; 
outputC	:	OUT	STD_LOGIC; 
outputD	:	OUT	STD_LOGIC; 
outputE	:	OUT	STD_LOGIC; 
outputI	:	OUT	STD_LOGIC; 
outputF	:	OUT	STD_LOGIC; 
outputG	:	OUT	STD_LOGIC; 
outputH	:	OUT	STD_LOGIC; 
outputJ	:	OUT	STD_LOGIC);
END COMPONENT;

SIGNAL inputA	:	STD_LOGIC := '0';
SIGNAL inputB	:	STD_LOGIC := '0';
SIGNAL inputC	:	STD_LOGIC := '0';
SIGNAL inputD	:	STD_LOGIC := '0';
SIGNAL inputE	:	STD_LOGIC := '0';
SIGNAL inputF	:	STD_LOGIC := '0';
SIGNAL inputG	:	STD_LOGIC := '0';
SIGNAL inputH	:	STD_LOGIC := '0';
SIGNAL inputK	:	STD_LOGIC := '0';
SIGNAL outputA	:	STD_LOGIC;
SIGNAL outputB	:	STD_LOGIC;
SIGNAL outputC	:	STD_LOGIC;
SIGNAL outputD	:	STD_LOGIC;
SIGNAL outputE	:	STD_LOGIC;
SIGNAL outputI	:	STD_LOGIC;
SIGNAL outputF	:	STD_LOGIC;
SIGNAL outputG	:	STD_LOGIC;
SIGNAL outputH	:	STD_LOGIC;
SIGNAL outputJ	:	STD_LOGIC;

SIGNAL input : STD_LOGIC_VECTOR (8 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR (9 DOWNTO 0);

SIGNAL CLOCK	:	STD_LOGIC := '0';
CONSTANT CLOCK_period : TIME := 10 ns;

BEGIN

input (0) <= inputA;
input (1) <= inputB;
input (2) <= inputC;
input (3) <= inputD;
input (4) <= inputE;
input (5) <= inputF;
input (6) <= inputG;
input (7) <= inputH;
input (8) <= inputK;

output (0) <= outputA;
output (1) <= outputB;
output (2) <= outputC;
output (3) <= outputD;
output (4) <= outputE;
output (5) <= outputI;
output (6) <= outputF;
output (7) <= outputG;
output (8) <= outputH;
output (9) <= outputJ;

CLOCK <= NOT CLOCK AFTER CLOCK_period/2;

UUT: us4486739_encoder PORT MAP(
inputA => inputA, 
inputB => inputB, 
inputC => inputC, 
inputD => inputD, 
inputE => inputE, 
inputF => inputF, 
inputG => inputG, 
inputH => inputH, 
inputK => inputK, 
CLOCK => CLOCK, 
outputA => outputA, 
outputB => outputB, 
outputC => outputC, 
outputD => outputD, 
outputE => outputE, 
outputI => outputI, 
outputF => outputF, 
outputG => outputG, 
outputH => outputH, 
outputJ => outputJ
);

-- *** Test Bench - User Defined Section ***
tb : PROCESS
BEGIN
WAIT; -- will wait forever
END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
