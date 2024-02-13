library ieee;
use ieee.std_logic_1164.all;

entity switchleds is port (
  switches : in std_logic_vector(9 downto 0);
  leds : out std_logic_vector(9 downto 0)
);
end entity;

architecture sys of switchleds is begin
leds <= switches;
end architecture;
