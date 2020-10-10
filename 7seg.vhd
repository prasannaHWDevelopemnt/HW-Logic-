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
--VHDL CODE TO REALIZE 7seg FUNCTIONALITY
------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
  
entity seg7 is
  generic (
    -- refresh_hz = (2 ** clk_cnt_bits) / clk_hz
    clk_cnt_bits : integer
  );
  port (
    clk : in std_logic;
    rst : in std_logic;
    value : in integer range 0 to 99;
    segments : out std_logic_vector(6 downto 0);
    digit_sel : out std_logic
  );
end seg7;

subtype digit_type is integer range 0 to 9;
type digits_type is array (1 downto 0) of digit_type;
signal digit : digit_type;
signal digits : digits_type;

-- Counting clock cycles

signal clk_cnt : unsigned(clk_cnt_bits - 1 downto 0);

COUNT_PROC : process(clk)
begin
  if rising_edge(clk) then
    if rst = '1' then
      clk_cnt <= (others => '0');
       
    else
      clk_cnt <= clk_cnt + 1;
       
    end if;
  end if;
end process;



-- ALTERNATE BETWEEN DIGITS

digit_sel <= clk_cnt(clk_cnt'high);
digit <= digits(0) when clk_cnt(clk_cnt'high) = '0' else digits(1);

--BCD TO 7-SEGMENT ENCODER

ENCODER_PROC : process(digit)
begin
  case digit is
 
    when 0 => segments <= "0111111";
    when 1 => segments <= "0000110";
    when 2 => segments <= "1011011";
    when 3 => segments <= "1001111";
    when 4 => segments <= "1100110";
    when 5 => segments <= "1101101";
    when 6 => segments <= "1111101";
    when 7 => segments <= "0000111";
    when 8 => segments <= "1111111";
    when 9 => segments <= "1101111";
   
    end case;
end process;