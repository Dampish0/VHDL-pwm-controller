library ieee;
   use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity serial_ctrl is
port(
	clk : in std_logic;
	reset_n : in std_logic;
	data : in std_logic_vector(7 downto 0);
	data_valid : in std_logic;
	
	serial_on : out std_logic;
	serial_off : out std_logic;
	serial_up : out std_logic;
	serial_down : out std_logic
);


end entity serial_ctrl;


architecture rtl of serial_ctrl is
	
	type t_ascii_check is array (0 to 5) of std_logic_vector(7 downto 0);
	constant alt_ascii : t_ascii_check := (X"30",--0
															X"31",--1
															X"55",--U
															X"75",--u
															X"44",--D
															X"64");--d
begin

	process(clk, Reset_n)
	begin
		if(rising_edge(clk)) then
			if (data_valid = '1') then
				case(data) is
					when alt_ascii(0) =>
						serial_off <= '1';
						serial_on <= '0';
					when alt_ascii(1) =>
						serial_off <= '0';
						serial_on <= '1';
					when alt_ascii(2) =>
						serial_up <= '1';
					when alt_ascii(3) =>
						serial_up <= '1';
					when alt_ascii(4) =>
						serial_down <= '1';				
					when alt_ascii(5) =>
						serial_down <= '1';				
					when others =>
						
				end case;
			else
				serial_off <= '0';				
				serial_up <= '0';
				serial_down <= '0';
				serial_on <= '0';			
			end if;
			if(Reset_n = '0')then
				serial_on <= '0';
				serial_off <= '0';
				serial_up <= '0';
				serial_down <= '0';
			end if;
		end if;
	end process;






end architecture rtl;