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


library ieee; 
use ieee.std_logic_1164.all;
  
entity srflip is 
   port(r,s,clk:in bit; q,qbar:buffer bit); 
end srflip;
  
architecture SRFF of srflip is 
   signal s1,r1:bit; 
begin 
   s1<=s nand clk; 
   r1<=r nand clk;
   q<= s1 nand qbar;
   qbar<= r1 nand q;
end SRFF;