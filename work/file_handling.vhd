library IEEE;
use std.textio.ALL
use IEEE.std_logic_1164.ALL;

Entity file_handling is
	port(clk : in bit)
end entity;


Architecture file_handling_arch of file_handling is
	begin
		process (clk)
	
			FILE data_in : text is in "c:/Users/siddi/vlsi/homework/homework8_1/work/in_data_file";
			FILE data_out : text is out "c:/Users/siddi/vlsi/homework/homework8_1/work/out_data_file";
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
	END behav ; 
				
			
			
		