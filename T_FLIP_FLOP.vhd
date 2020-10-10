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
use IEEE.STD_LOGIC_1164.all;  

entity Toggle_flip_flop is 
   port( 
      t : in STD_LOGIC; 
      clk : in STD_LOGIC; 
      reset : in STD_LOGIC; 
      dout : out STD_LOGIC
   ); 
end Toggle_flip_flop;  

architecture TFF of Toggle_flip_flop is 
begin 
   tff : process (t,clk,reset) is 
   variable m : std_logic : = '0'; 
   
   begin 
      if (reset = '1') then 
         m : = '0'; 
      elsif (rising_edge (clk)) then 
         if (t = '1') then 
            m : = not m;        
         end if; 
      end if; 
      dout < = m; 
   end process tff; 
end TFF; 
