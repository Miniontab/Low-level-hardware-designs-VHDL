
-- Create Date: 11/21/2019 06:07:36 PM
-- Design Name: 
-- Module Name: Counter_tb - Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_tb is
generic (N : integer := 4);
--  Port ( );
end Counter_tb;

architecture Behavioral of Counter_tb is
constant clk_period : time := 30ns;


-- Component declaration of the unit under test
component BinaryUDCounter 
port (
        clk, reset, en, direction : in std_logic;
        count_out : out std_logic_vector(N-1 downto 0)
); 

end component;

signal clk, reset, en, direction : std_logic;
signal count_out : std_logic_vector(N-1 downto 0);

begin

-- Instantiate UUT
uut: BinaryUDCounter port map(

clk => clk, reset => reset, en => en, direction => direction, count_out => count_out

);

clk_process: process 
   begin
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
   end process;


-- Stimulus process
stim: process
begin

reset <= '1'; ----------------- resetting so everything starts from 0
wait for 3*clk_period;

reset <= '0'; ----------------- counting up to 100
en <= '1';
direction <= '1';
wait for 20*clk_period;


direction <= '0';
wait for 26*clk_period; ------ counting down to 84 from 100




end process;









end Behavioral;
