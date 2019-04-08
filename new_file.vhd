library work;
library ieee;
use ieee.std_logic_1164.ALL;
use work.Network_Coding.ALL;
entity new_en is
	port (cin_1, cin_2 : in std_logic;
		cout : out std_logic);
end new_en;


Architecture new_arch of new_en is
	begin
		cout <= encoding(cin_1,cin_2);
	end new_arch;