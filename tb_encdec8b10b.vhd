-- Vhdl test bench created from schematic /home/user/workspace/raid/encdec8b10b.sch - Mon Dec  4 21:36:15 2023
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
ENTITY encdec8b10b_encdec8b10b_sch_tb IS
END encdec8b10b_encdec8b10b_sch_tb;
ARCHITECTURE behavioral OF encdec8b10b_encdec8b10b_sch_tb IS 

   COMPONENT encdec8b10b
   PORT( clk	:	IN	STD_LOGIC; 
          rd4	:	IN	STD_LOGIC; 
          ia	:	IN	STD_LOGIC; 
          ib	:	IN	STD_LOGIC; 
          ic	:	IN	STD_LOGIC; 
          id	:	IN	STD_LOGIC; 
          ie	:	IN	STD_LOGIC; 
          ik	:	IN	STD_LOGIC; 
          DOS6_1	:	OUT	STD_LOGIC; 
          DOS6_2	:	OUT	STD_LOGIC; 
          compls6	:	IN	STD_LOGIC; 
          oa	:	OUT	STD_LOGIC; 
          ob	:	OUT	STD_LOGIC; 
          oc	:	OUT	STD_LOGIC; 
          od	:	OUT	STD_LOGIC; 
          oe	:	OUT	STD_LOGIC; 
          oi	:	OUT	STD_LOGIC; 
          os	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL rd4	:	STD_LOGIC;
   SIGNAL ia	:	STD_LOGIC;
   SIGNAL ib	:	STD_LOGIC;
   SIGNAL ic	:	STD_LOGIC;
   SIGNAL id	:	STD_LOGIC;
   SIGNAL ie	:	STD_LOGIC;
   SIGNAL ik	:	STD_LOGIC;
   SIGNAL DOS6_1	:	STD_LOGIC;
   SIGNAL DOS6_2	:	STD_LOGIC;
   SIGNAL compls6	:	STD_LOGIC;
   SIGNAL oa	:	STD_LOGIC;
   SIGNAL ob	:	STD_LOGIC;
   SIGNAL oc	:	STD_LOGIC;
   SIGNAL od	:	STD_LOGIC;
   SIGNAL oe	:	STD_LOGIC;
   SIGNAL oi	:	STD_LOGIC;
   SIGNAL os	:	STD_LOGIC;

BEGIN

   UUT: encdec8b10b PORT MAP(
		clk => clk, 
		rd4 => rd4, 
		ia => ia, 
		ib => ib, 
		ic => ic, 
		id => id, 
		ie => ie, 
		ik => ik, 
		DOS6_1 => DOS6_1, 
		DOS6_2 => DOS6_2, 
		compls6 => compls6, 
		oa => oa, 
		ob => ob, 
		oc => oc, 
		od => od, 
		oe => oe, 
		oi => oi, 
		os => os
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
