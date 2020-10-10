-- Procedure
-- * Create a new project by using file-new project
-- * Name the new project and choose VHDL module 
-- * Choose the architecture and give the entity details 
-- * A simple module is generated; Additional requierd library files are included 
-- * Architecture is automatically generated
-- * Now the coding is done under the architecture part and at last give 'end architecture name'
-- * The syntax is checked
-- * Once the sytax is done simulation is performed 
-- * Graph is plotted for various combination of input values 


Library ieee; 
use ieee.std_logic_1164.all;  

entity dflip is 
   port(d,clk:in bit; q,qbar:buffer bit); 
end dflip; 
 
architecture DFF of dflip is 
   signal d1,d2:bit; 
begin 
   d1<=d nand clk; 
   d2<=(not d) nand clk; 
   q<= d1 nand qbar; 
   qbar<= d2 nand q; 
end DFF;