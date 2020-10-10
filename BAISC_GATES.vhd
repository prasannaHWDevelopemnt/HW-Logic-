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

------------------------------------------------------------------
--VHDL CODE TO REALIZE AND FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity and_g is 
   port(A, B : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end and_g; 
 
architecture AND_G of and_g is 
      Q <= A and B; 
end AND_G;


------------------------------------------------------------------
--VHDL CODE TO REALIZE OR FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity or_g is 
   port(A, B : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end and_g; 
 
architecture OR_G of or_g is 
      Q <= A or B; 
end OR_G;

------------------------------------------------------------------
--VHDL CODE TO REALIZE NOT FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity not_g is 
   port(A : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end not_g; 
 
architecture NOT_G of not_g is 
      Q <= not A; 
end NOT_G;


------------------------------------------------------------------
--VHDL CODE TO REALIZE NAND FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity nand_g is 
   port(A, B : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end nand_g; 
 
architecture NAND_G of nand_g is 
      Q <= A nand B; 
end NAND_G;


------------------------------------------------------------------
--VHDL CODE TO REALIZE NOR FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity nor_g is 
   port(A, B : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end nor_g; 
 
architecture NOR_G of nor_g is 
      Q <= A nand B; 
end NOR_G;

------------------------------------------------------------------
--VHDL CODE TO REALIZE EXOR FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity exor_g is 
   port(A, B : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end exor_g; 
 
architecture EXOR_G of exor_g is 
      Q <= A xor B; 
end EXOR_G;

------------------------------------------------------------------
--VHDL CODE TO REALIZE EXOR FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity exnor_g is 
   port(A, B : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end exnor_g; 
 
architecture EXNOR_G of exnor_g is 
      Q <= A xnor B; 
end EXNOR_G;


