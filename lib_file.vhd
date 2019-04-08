-- This is my library to hold package declration
-- for homework 8
library ieee;
use ieee.std_logic_1164.ALL;

Package homework_8 is
	function encoding(signal input1, input2 : in std_logic)
	return  std_logic;
end homework_8;
