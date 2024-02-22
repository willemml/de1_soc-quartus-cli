library ieee;
use ieee.std_logic_1164.all;

entity toplevel is port (
  CLOCK_50MHZ : in std_logic;
  SW : in std_logic_vector(9 downto 0);
  KEY : in std_logic_vector(3 downto 0);
  LEDR : out std_logic_vector(9 downto 0);
  HEX0 : out std_logic_vector(6 downto 0);
  HEX1 : out std_logic_vector(6 downto 0);
  HEX2 : out std_logic_vector(6 downto 0);
  HEX3 : out std_logic_vector(6 downto 0);
  HEX4 : out std_logic_vector(6 downto 0);
  HEX5 : out std_logic_vector(6 downto 0)
);
end entity;

architecture sys of toplevel is begin
  LEDR <= SW;
end architecture;
