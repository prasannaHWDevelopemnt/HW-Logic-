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


library IEEE; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity counter is 
   port(Clock, CLR : in std_logic; 
      Q : out std_logic_vector(3 downto 0)
   ); 
end counter;  

architecture UP_COUNTER of counter is 
   signal tmp: std_logic_vector(3 downto 0); 
begin 
   process (Clock, CLR) 
   
   begin 
      if (CLR = '1') then 
         tmp < = "0000"; 
      elsif (Clock'event and Clock = '1') then 
         mp <= tmp + 1; 
      end if; 
   end process; 
   Q <= tmp; 
end UP_COUNTER;