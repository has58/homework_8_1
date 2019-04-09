library IEEE;
use std.textio.ALL;
use IEEE.std_logic_1164.ALL;

Entity file_handling is
	port(clk : in bit);
end entity;


Architecture file_handling_arch of file_handling is
	FILE data_in : text open read_mode "C:\Users\siddi\vlsi\homework\homework8_1\master_records.in";
	FILE data_out : text open write_mode "C:\Users\siddi\vlsi\homework\homework8_1\master_records.out";
			
	begin
		process (clk)
			variable in_line, out_line : line;
			variable inverse : bit;
			variable half : integer;
			begin
				while (not (endfile (data_in)))
				loop
					readline (data_in,in_line);
					read (in_line, inverse);
					read (in_line, half);
					inverse := NOT inverse;
					half := half/2;
					WRITE ( out_line, inverse ) ;
					WRITE ( out_line, half ) ;
					WRITELINE ( data_out, out_line );
 				END LOOP ;
			END PROCESS ;
	END  file_handling_arch; 
				
			
			
		
