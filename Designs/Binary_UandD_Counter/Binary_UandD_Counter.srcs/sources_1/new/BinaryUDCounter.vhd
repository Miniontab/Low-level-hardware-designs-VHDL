----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Singh
-- 
-- Create Date: 11/21/2019 04:51:12 PM
-- Design Name: 
-- Module Name: BinaryUDCounter - arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: This vhd file constructs a N-bit binary up/down counter.
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity BinaryUDCounter is
generic (N : integer := 4);
port (
        clk, reset, en, direction : in std_logic;
        count_out : out std_logic_vector(N-1 downto 0)
);
end;

architecture arch of BinaryUDCounter is


signal count_internal : std_logic_vector(N-1 downto 0);
signal count_next : std_logic_vector(N-1 downto 0);

begin 

-- register-----------------------------
process (clk, reset, en)
begin

if (reset = '1') then
count_internal <= (others=>'0');

elsif (rising_edge(clk) and en='1') then
count_internal <= count_next;

end if;

end process;

-- next-state logic----------------------
 count_next <= (others=>'0') when reset='1' else
 count_internal+1 when en ='1' and direction='1' else
 count_internal-1;

-- output logic--------------------------
count_out <= count_internal;

end arch; 

