----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:24 09/06/2022 
-- Design Name: 
-- Module Name:    nrz - Behavioral 
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

entity nrz is
Port (
i_reset : in  STD_LOGIC;
i_clock : in  STD_LOGIC;
i_in : in  STD_LOGIC;
o_out : out  STD_LOGIC
);
end nrz;

-- XXX https://en.wikipedia.org/wiki/Non-return-to-zero

-- XXX Non-return-to-zero space - 0 toggle , 1 - constant
architecture nrz_s of nrz is
	signal d,q,inb : std_logic := '0';
begin
	inb <= not i_in;

	dff : process (i_clock,i_reset)
	begin
		if (i_reset='1') then
			q <= '0';
		elsif (rising_edge(i_clock))then
			q <= d;
		end if;
	end process dff;

	d <= q xor inb;

	o_out <= q;
end architecture nrz_s;

-- XXX Non-return-to-zero space invert - 0 toggle , 1 - constant
architecture nrz_si of nrz is
	signal d,q,inb : std_logic;
begin
	inb <= not i_in;
	dff : process (i_clock,i_reset)
	begin
		if (i_reset='1') then
			q <= '1';
		elsif (rising_edge(i_clock))then
			q <= d;
		end if;
	end process dff;

	d <= q xor inb;

	o_out <= q;
end architecture nrz_si;

-- XXX Non-return-to-zero mark - 0 constant , 1 - toggle
architecture nrz_m of nrz is
	signal d,q,inb : std_logic;
begin
	inb <= i_in;
	dff : process (i_clock,i_reset)
	begin
		if (i_reset='1') then
			q <= '0';
		elsif (rising_edge(i_clock))then
			q <= d;
		end if;
	end process dff;

	d <= q xor inb;

	o_out <= not q;
end architecture nrz_m;

-- XXX Non-return-to-zero mark invert - 0 constant , 1 - toggle
architecture nrz_mi of nrz is
	signal d,q,inb : std_logic;
begin
	inb <= i_in;
	dff : process (i_clock,i_reset)
	begin
		if (i_reset='1') then
			q <= '1';
		elsif (rising_edge(i_clock))then
			q <= d;
		end if;
	end process dff;

	d <= q xor inb;

	o_out <= not q;
end architecture nrz_mi;
