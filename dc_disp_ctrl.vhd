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

type t_check is array (0 to 10) of std_logic_vector(6 downto 0);

constant seg_table : t_check := (
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
													 "1000000" -- off -- 10 1111111
													 );


													 
type t_asci_check is array (0 to 10) of std_logic_vector(7 downto 0);
													 
constant asci_table : t_asci_check := (
													 X"30",  -- 0
													 X"31",  -- 1
													 X"32",  -- 2
													 X"33",  -- 3
													 X"34",  -- 4
													 X"35",  -- 5
													 X"36",  -- 6
													 X"37",  -- 7
													 X"38",  -- 8
													 X"39",   -- 9
													 X"20" -- off -- 10 space
													 );
													 		
								 

   function fn_create_bcd_internal(
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
		elsif(input = 0)then
			v_hundreds := 10;
			v_tens := 10;
			v_ones := 0;
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

   end function fn_create_bcd_internal;
	
	
	
	
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
			end if;
		end if;
		
      return to_unsigned(v_hundreds, 4) & to_unsigned(v_tens, 4) & to_unsigned(v_ones, 4);

   end function fn_create_bcd;
	
	
	
	type tx_data_sequences is array (0 to 4) of std_logic_vector(7 downto 0);
	signal sequences : tx_data_sequences := ("00000000",
																"00000000",
																X"30",
																X"25",
																X"0D");
	
	signal s_completed_tx : std_logic := '0';
	signal s_bcd_tx_result : unsigned(11 downto 0) := (others => '0');
	
	
	signal s_updateInfo : std_logic := '0';
	signal s_valid_data : std_logic := '0';
	signal s_dc : integer range 0 to 100 := 0;
	signal s_data_backlog : std_logic := '0';
	SIGnal s_backlog_c : boolean := false; --if complete then true
	signal s_tx_cn : integer range 0 to 7 := 0;
	signal s_ready_cd :  boolean := false;
	signal s_started_tx :  boolean := false;
	signal s_tx_update_complete_state : integer range 0 to 2 := 0;
	
	
begin
	
	tx_valid <= s_valid_data;
	

	p_display : process(clk, reset_n)
	variable v_bcd_result : unsigned(11 downto 0) := (others => '0');
	begin
		if(reset_n = '0')then
				hex0 <=  seg_table(0);
				hex1 <=  seg_table(0);
				hex2 <=  seg_table(0);
				
				s_updateInfo <= '1';
		elsif(rising_edge(clk))then
			if((pwm_dc_updated) = '1') then
				v_bcd_result := fn_create_bcd(pwm_dc);
				
				hex0 <=  seg_table(to_integer(v_bcd_result(3 downto 0)));
				hex1 <=  seg_table(to_integer(v_bcd_result(7 downto 4)));
				hex2 <=  seg_table(to_integer(v_bcd_result(11 downto 8)));
				if(s_updateInfo = '1')then
					s_data_backlog <= '1';
				end if;
				s_updateInfo <= '1';
				s_dc <= pwm_dc;
			end if;
			if(s_completed_tx = '1' and not s_backlog_c and s_tx_update_complete_state = 2)then
				s_updateInfo <= '0';
				s_data_backlog <= '0';
			end if;
		
		
		end if;
	
	
	end process p_display;
 
 


		
	p_tData : process(clk, s_updateInfo, reset_n)
	begin
		if(reset_n = '0')then
			s_completed_tx <= '1';
			s_tx_cn <= 0;
			s_valid_data <= '0';
			tx_data <= (others => '0');
			s_bcd_tx_result <= fn_create_bcd_internal(pwm_dc);
		elsif(s_updateInfo = '1')then
			
			if(rising_edge(clk))then
			
					case(s_tx_cn)is
						when 0 =>
							if(not s_started_tx)then
									s_tx_update_complete_state <= 1;
									s_started_tx <= true;

										s_bcd_tx_result <= fn_create_bcd_internal(pwm_dc);
									s_tx_cn <= 1;
								end if;
						when 1 =>
								sequences(2) <= asci_table(to_integer(s_bcd_tx_result(3 downto 0)));
								sequences(1) <= asci_table(to_integer(s_bcd_tx_result(7 downto 4)));
								sequences(0) <= asci_table(to_integer(s_bcd_tx_result(11 downto 8)));
								s_tx_cn <= 2;
						when others =>
							if(tx_ready = '1' and not s_ready_cd)then
								if(s_tx_cn-2 <= 4)then
									tx_data <= sequences(s_tx_cn-2);
									s_valid_data <= '1';
									s_tx_cn <= s_tx_cn + 1;
									s_ready_cd <= true;
								elsif(s_data_backlog = '0' or (s_backlog_c and s_data_backlog = '1')) then --returning part, mission acccomplished
									s_completed_tx <= '1';
									s_valid_data <= '0';
									s_tx_cn <= 0;
									s_tx_update_complete_state <= 2;
									s_backlog_c <= false;
									s_started_tx <= false;
								elsif(s_data_backlog = '1')then
									s_backlog_c <= true;
									s_tx_cn <= 0;
									s_started_tx <= false;
								end if;
							else
								s_valid_data <= '0';
								s_ready_cd <= false;
							end if;
						end case;
			
		
			end if;
		else
			s_completed_tx <= '1';
			s_valid_data <= '0';
			s_tx_cn <= 0;
			s_tx_update_complete_state <= 0;
			s_backlog_c <= false;
			s_started_tx <= false;
		end if;
	
	end process p_tData;


















end architecture rtl;