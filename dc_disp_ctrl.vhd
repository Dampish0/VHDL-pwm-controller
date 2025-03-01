library ieee;
   use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
	
entity dc_disp_ctrl is
port(
	clk : in std_logic;
	reset_n : in std_logic;

	pwm_dc : in integer range 0 to 100;
	pwm_dc_updated : in std_logic;
	
	hex0 : out std_logic_vector(6 downto 0);
	hex1 : out std_logic_vector(6 downto 0);
	hex2 : out std_logic_vector(6 downto 0);
	
	tx_ready : in std_logic;
	tx_data : out std_logic_vector(7 downto 0);
	tx_valid : out std_logic
);
end entity dc_disp_ctrl;


architecture rtl of dc_disp_ctrl is

type t_ascii_check is array (0 to 10) of std_logic_vector(6 downto 0);

constant ascii_table : t_ascii_check := (
													 "1000000",  -- 0
													 "1111001",  -- 1
													 "0100100",  -- 2
													 "0110000",  -- 3
													 "0011001",  -- 4
													 "0010010",  -- 5
													 "0000010",  -- 6
													 "1111000",  -- 7
													 "0000000",  -- 8
													 "0010000",   -- 9
													 "1111111" -- off -- 10
													 );
													 					 
													 
								 

   function fn_create_bcd(
		input : integer range 0 to 100)
   return unsigned is
      variable v_ones      : integer range 0 to 10;
      variable v_tens      : integer range 0 to 10;
      variable v_hundreds  : integer range 0 to 10;
		variable v_uns_inp   : unsigned(8 downto 0);
		variable input_temp : integer range 0 to 100;
   begin
      v_ones         := 0;
      v_tens         := 0;
      v_hundreds     := 0;
		input_temp := input;
		if(input = 100)then
			v_hundreds := 1;
		else
		
			v_tens := input_temp/10;
			v_ones := input_temp - v_tens*10;
			
		end if;
		
		if(v_hundreds = 0) then
			v_hundreds := 10;
			if(v_tens = 0) then
				v_Tens := 10;
				if(v_ones = 0)then
					v_ones := 10;
				end if;
			end if;
		end if;
		
      return to_unsigned(v_hundreds, 4) & to_unsigned(v_tens, 4) & to_unsigned(v_ones, 4);

   end function fn_create_bcd;
	
	
	
	
	
	
	signal s_updateInfo : std_logic := '0';
	signal s_valid_data : std_logic := '0';
	signal s_bcd_result : unsigned(11 downto 0) := (others => '0');
	signal s_dc : integer range 0 to 100 := 0;
	
	constant s_valid_out_cn_max : integer := 3;
	signal s_clk_valid_out_cn : integer range 0 to s_valid_out_cn_max := 0;
	
	
begin
	
	tx_valid <= s_valid_data;
	

	p_display : process(clk)
	begin
	
		if(rising_edge(clk))then
			if((pwm_dc_updated) = '1') then
				s_bcd_result <= fn_create_bcd(pwm_dc);
				
				hex0 <= ascii_table(to_integer(s_bcd_result(3 downto 0)));
				hex1 <= ascii_table(to_integer(s_bcd_result(7 downto 4)));
				hex2 <= ascii_table(to_integer(s_bcd_result(11 downto 8)));
				s_updateInfo <= '1';
				s_dc <= pwm_dc;
				
			elsif(s_updateInfo = '1' and s_clk_valid_out_cn = 0)then
				if(tx_ready = '1')then
					
					s_valid_data <= '1';
					tx_data <= std_logic_vector(to_unsigned(s_dc, 8));
					s_updateInfo <= '0';
				end if;
				
			elsif(s_valid_data = '1' and s_clk_valid_out_cn < s_valid_out_cn_max)then
				s_clk_valid_out_cn <= s_clk_valid_out_cn +1;
			elsif(s_valid_data = '1') then
				s_valid_data <= '0';
				s_clk_valid_out_cn <= 0;
			end if;
		
		
		end if;
	
	
	
	
	
	
	end process p_display;
 
 




















end architecture rtl;