library ieee;
library work;
use work.homework_8.ALL;
use ieee.std_logic_1164.ALL;
package body homework_8 is
 	function encoding (signal input1,input2: std_logic)
		return std_logic is
		begin
			return (input1 XOR input2);
    		end encoding;

  end homework_8;