library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity three_to_eight_decoder is
    port(
        A : in STD_LOGIC_VECTOR(2 downto 0);
        Y : out STD_LOGIC_VECTOR(7 downto 0)
    );
end three_to_eight_decoder;

architecture rtl of three_to_eight_decoder is
begin
    Y(0) <= (not A(2)) and (not A(1)) and (not A(0));
    Y(1) <= (not A(2)) and (not A(1)) and A(0);
    Y(2) <= (not A(2)) and A(1) and (not A(0));
    Y(3) <= (not A(2)) and A(1) and A(0);
    Y(4) <= A(2) and (not A(1)) and (not A(0));
    Y(5) <= A(2) and (not A(1)) and A(0);
    Y(6) <= A(2) and A(1) and (not A(0));
    Y(7) <= A(2) and A(1) and A(0);
	 
end rtl;
