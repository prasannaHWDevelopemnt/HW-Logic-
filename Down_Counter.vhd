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
use ieee.std_logic_unsigned.all;
  
entity dcounter is 
   port(Clock, CLR : in std_logic; 
      Q : out std_logic_vector(3 downto 0)); 
end dcounter; 
 
architecture Down_counter of dcounter is 
   signal tmp: std_logic_vector(3 downto 0); 

begin 
   process (Clock, CLR) 
   begin 
      if (CLR = '1') then 
         tmp <= "1111"; 
      elsif (Clock'event and Clock = '1') then 
         tmp <= tmp - 1; 
      end if; 
   end process; 
   Q <= tmp; 
end Down_counter;