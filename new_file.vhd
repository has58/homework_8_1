library work;
library ieee;
use ieee.std_logic_1164.ALL;
use work.Network_Coding.ALL;
entity new_en is
	port (cin_1, cin_2 : in std_logic;
		cout1,cout2,cout3 : out integer);
end new_en;


Architecture new_arch of new_en is
	signal a : std_logic;
	constant b : integer :=3;
	begin
		a <= encoding(cin_1,cin_2);
	p1:	process(a)
			constant b : integer :=5;
			begin
				if (a='1') then
					cout1 <= b;
					cout2 <= new_arch.b;
					cout3 <= p1.b;
				end if;
			end process p1;
	end new_arch;