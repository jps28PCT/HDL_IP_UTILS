-- MIT License

-- Copyright (c) 2026 Jacob Smithmyer

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity rand_4_bit is
    Port ( 	clock        : in   STD_LOGIC;
	    	rand_out     : out  STD_LOGIC_VECTOR (3 downto 0));
end rand_4_bit;

architecture Behavioral of rand_4_bit is

	signal ctrl_bits : STD_LOGIC_VECTOR(15 downto 0) := x"21A9";

begin

	update : process(clock)
	begin 
		if rising_edge(clock) then
			rand_out(3 downto 0) <= ctrl_bits(3 downto 0);
			ctrl_bits <= (ctrl_bits(0) xor ctrl_bits(6)) & ctrl_bits(15 downto 1);
		end if;
	
	end process;					
	
	
	end Behavioral;
	
