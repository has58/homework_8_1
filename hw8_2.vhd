library IEEE;
use ieee.std_logic_1164.ALL;
use std.textio.ALL;


Entity reverse_eng is
  port( clk : in bit);
end reverse_eng;

Architecture reverse_eng_arch of reverse_eng is
  FILE from_file : TEXT open read_mode is "C:\Users\siddi\vlsi\homework\homework8_1\mfi.txt" ;
  FILE  to_file : TEXT open write_mode is "C:\Users\siddi\vlsi\homework\homework8_1\mfo.txt";
  FILE from_file1 : TEXT open read_mode is "C:\Users\siddi\vlsi\homework\homework8_1\mfi2.txt" ;
  FILE  to_file1 : TEXT open write_mode is "C:\Users\siddi\vlsi\homework\homework8_1\mfo2.txt";
  begin
	guarded_block:
	block (clk='1')
	begin
    	process(clk)
      		variable BUF_IN, BUF_OUT : LINE;
      		variable LNAME : STRING(1 to 7);
      		variable ID_NUMBER : integer;
      		variable SALARY : real;
      	begin
        	while (not endfile(from_file))
          	LOOP
            	readline(from_file , BUF_IN);
            	read (BUF_IN, LNAME);
            	read (BUF_IN, ID_NUMBER);
            	read (BUF_IN, SALARY);
            	WRITE (BUF_OUT, SALARY);
            	WRITE (BUF_OUT, ' ');
            	WRITE(BUF_OUT, ID_NUMBER);
            	WRITE (BUF_OUT, ' ');
	    	WRITE (BUF_OUT, LNAME);
	        WRITELINE  (to_file, BUF_OUT);
          	end loop;
        end process;
	end block guarded_block;

	guarded_block2:
	block (clk='0')
	begin
    	process(clk)
      		variable BUF_IN1, BUF_OUT1 : LINE;
      		variable money : integer;
		variable new_money : integer;
      	begin
        	while (not endfile(from_file1))
          	LOOP
            	readline(from_file1 , BUF_IN1);
            	read (BUF_IN1, money);
            	money := money/2;
           	WRITE(BUF_OUT1, money);
            	WRITELINE  (to_file1, BUF_OUT1);
          	end loop;
        end process;
	end block guarded_block2;
  end reverse_eng_arch;
