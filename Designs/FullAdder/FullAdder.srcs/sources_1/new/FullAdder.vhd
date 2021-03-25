
-- Create Date: 11/20/2019 10:22:43 PM
-- Design Name: 
-- Module Name: FullAdder - Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder is
  Port ( x : in std_logic;
         y : in std_logic;
         carry_in : in std_logic;
         
         carry_out : out std_logic;
         sum : out std_logic );
end FullAdder;

architecture Dataflow of FullAdder is

begin

sum <= x xor y xor carry_in;
carry_out <= (x and y) or ((x xor y) and carry_in);


end Dataflow;
