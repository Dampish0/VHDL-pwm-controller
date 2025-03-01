library ieee;
   use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
	
entity pwm_ctrl is
port(
	clk : in std_logic;
	reset_n : in std_logic;
	ledr : out std_logic;
	
	key_on : in std_logic;
	key_off : in std_logic;
	key_up : in std_logic;
	key_down : in std_logic;

	serial_on : in std_logic;
	serial_off : in std_logic;
	serial_up : in std_logic;
	serial_down : in std_logic;
	
	current_dc : out integer range 0 to 100;
	current_dc_update : out std_logic

);
end entity pwm_ctrl;




architecture rtl of pwm_ctrl is

--timing signals
	constant s_clk_freq : integer := 50000000;
	constant s_clk_cn_max : integer := s_clk_freq/2000;
   constant factor        : integer := s_clk_cn_max / 100;   -- 250
	signal s_clk_cn : integer range 0 to s_clk_cn_max + 1 := 0;
	signal tick : std_logic := '0';
	signal s_dc_cn : integer range 0 to s_clk_cn_max + 1;
	signal s_maxupdate_cn : integer range 0 to 10;
	
	signal s_pwm_dc : integer range 10 to 100 := 10;
	signal s_pwm_dc_last : integer range 0 to 100 := 0;
	signal s_isEnabled : std_logic := '0'; 
	signal s_dc_changed : std_logic :=  '0';
	signal s_wasEnabled_LastCylce : boolean := false;
 
begin
	current_dc <= s_pwm_dc when s_isEnabled = '1' else 0;
	current_dc_update <= s_dc_changed;
	
	process(clk, reset_n)
	begin
		if reset_n = '0' then
			s_dc_cn      <= factor * 100;
			s_pwm_dc_last   <= 100;
			ledr            <= '0';
			s_dc_changed <= '0';
		elsif(rising_edge(clk))then
			
			if(s_wasEnabled_LastCylce /= (s_isEnabled = '1'))then
				s_wasEnabled_LastCylce <= (s_isEnabled = '1');
				s_dc_changed <= '1';
			end if;	
			
			if(s_dc_changed = '1' and s_maxupdate_cn  < 10) then
				s_maxupdate_cn <= s_maxupdate_cn + 1;
			elsif(s_dc_changed = '1') then
				s_dc_changed <= '0';
				s_maxupdate_cn <= 0;
			end if;
			
			if(s_isEnabled = '1') then-- main pwm part that actually flickers the ledr
				if(s_clk_cn >= s_dc_cn)then
						ledr <= '0';
				else
						ledr <= '1';
				end if;
		
		
		
				if(s_pwm_dc_last /= s_pwm_dc)then 
					s_dc_changed <= '1';
					s_pwm_dc_last <= s_pwm_dc;
					s_dc_cn <= (factor*s_pwm_dc);	
				end if;
				
			else
				ledr     <= '0';
				s_dc_changed <= '1';	
			end if;	
		end if;




	end process;

	--handle tick every 1ms and dc timings
	process(clk, reset_n)
	begin
		if reset_n = '0' then
			tick       <= '0';
			s_clk_cn <= 0;
		elsif(rising_edge(clk))then
			
			if(s_isEnabled = '1')then
			
				if(s_clk_cn_max <= s_clk_cn)then
					tick <= '1';
					s_clk_cn <= 0;
				else
					tick <= '0';
					s_clk_cn <= s_clk_cn +1;
		
				end if;
			
				
			end if;
		
		end if;	
	end process;

	--handle inputs
	process(clk, reset_n)
	begin
		if reset_n = '0' then
			s_isEnabled <= '0';
			s_pwm_dc    <= 10;
		elsif(rising_edge(clk))then
		
			if(key_on = '1')then
				s_isEnabled <= '1';
			elsif(key_off = '1')then
				s_isEnabled <= '0';
			elsif(serial_on = '1') then
				s_isEnabled <= '1';
			elsif(serial_off = '1') then
				s_isEnabled <= '0';
			end if;
			
			if(key_up = '1' and s_pwm_dc < 100)then
				if(s_isEnabled = '0')then
					s_isEnabled <= '0';
					s_pwm_dc <= 10;
				else
					s_pwm_dc <= s_pwm_dc +1;
				end if;
			elsif(key_down = '1' and s_pwm_dc > 10)then
				s_pwm_dc <= s_pwm_dc -1;
			elsif(serial_up = '1' and s_pwm_dc < 100)then
				if(s_isEnabled = '0')then
					s_isEnabled <= '0';
					s_pwm_dc <= 10;
				end if;
				s_pwm_dc <= s_pwm_dc +1;
			elsif(serial_down = '1' and s_pwm_dc > 10)then
				s_pwm_dc <= s_pwm_dc -1;			
			end if;
		
			
		
		end if;
	
	
	
	end process;



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


end architecture rtl;