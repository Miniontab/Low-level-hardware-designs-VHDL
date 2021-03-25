library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_FullAdder is
end tb_FullAdder;


architecture behavior of tb_FullAdder is

-- Component Declaration for the Unit Under Test (UUT)
component FullAdder
  Port ( x : in std_logic;
         y : in std_logic;
         carry_in : in std_logic;
         
         carry_out : out std_logic;
         sum : out std_logic );
end component;

signal x,y,carry_in : std_logic; -- inputs
signal sum,carry_out : std_logic; -- outputs

begin

-- Instantiate the Unit Under Test (UUT)
uut: FullAdder port map (

x => x, y => y, carry_in => carry_in, carry_out => carry_out, sum => sum
);


-- Stimulus process
stim : process
begin

x <= '0';
y <= '0';
carry_in <= '0';

wait for 30 ns;

x <= '0';
y <= '0';
carry_in <= '1';

wait for 30 ns;

x <= '0';
y <= '1';
carry_in <= '0';

wait for 30 ns;

x <= '0';
y <= '1';
carry_in <= '1';

wait for 30 ns;

x <= '1';
y <= '0';
carry_in <= '0';

wait for 30 ns;

x <= '1';
y <= '0';
carry_in <= '1';

wait for 30 ns;

x <= '1';
y <= '1';
carry_in <= '0';

wait for 30 ns;

x <= '1';
y <= '1';
carry_in <= '1';

wait for 30 ns;

end process;



end;