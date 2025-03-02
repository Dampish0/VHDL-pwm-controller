library ieee;
   use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
	
entity key_ctrl is
port(
	clk : in std_logic;
	reset_n : in std_logic;
	key_n : in std_logic_vector(3 downto 0);

	key_on : out std_logic;
	key_off : out std_logic;
	key_up : out std_logic;
	key_down : out std_logic
	
);
end entity key_ctrl;


architecture rtl of key_ctrl is

--timing signals
	constant s_clk_freq : integer := 50000000;
	constant s_target_freq : integer := s_clk_freq/100;
	type clk_cn is array (3 downto 0) of integer range 0 to s_target_freq;

	signal s_clk_cn : clk_cn;

	
--doublesync everything

	signal key_n_1r : std_logic_vector(3 downto 0) := "1111";
	signal key_n_2r : std_logic_vector(3 downto 0) := "1111";
	signal prev_key_n_2r : std_logic_vector(3 downto 0) := "0000";
	signal debounce_key : boolean := false;
	
	signal s_output : std_logic_vector(3 downto 0) := "0000";

	
begin
	
	key_off <= s_output(0);
	key_on <= s_output(1);
	key_down <= s_output(2);
	key_up <= s_output(3);
	

	--main process
	process(clk, reset_n)
	begin
		if(reset_n = '0') then
			s_output <= (others => '0');
			key_n_1r <= (others => '1');
			key_n_2r <= (others => '1');
			s_clk_cn <= (others => 0);
		elsif(rising_edge(clk))then
				key_n_1r <= key_n;
				key_n_2r <= key_n_1r;
			
			
				if(key_n_2r(2) = '0' and prev_key_n_2r(2) = '1' and not debounce_key) then
					s_output(2) <= not key_n_2r(2);
					debounce_key <= true;
				elsif(key_n_2r(3) = '0' and prev_key_n_2r(3) = '1' and not debounce_key)then
					s_output(3) <= not key_n_2r(3); 
					debounce_key <= true;
				else
					s_output(2) <= '0';
					s_output(3) <= '0';
					debounce_key <= key_n_2r(3) = '0' or key_n_2r(2) = '0';
				end if;
				
				if(not debounce_key and (key_n_2r(0) = '0' or key_n_2r(1) = '0'))then
					s_output(1) <= not key_n_2r(1);
					s_output(0) <= not key_n_2r(0);
					debounce_key <= true;
				else
					s_output(1) <= '0';
					s_output(0) <= '0';
					debounce_key <= key_n_2r(0) = '0' or key_n_2r(1) = '0';
				end if;
				prev_key_n_2r <= key_n_2r;
			
			
			
			
			
			--10ms pulse
			for i in key_n_2r'range loop
			
				if(key_n_2r(i) = '0') then
				
					if(s_clk_cn(i) < s_target_freq) then
						if(not ((i = 3 or i = 2) and key_n_2r(3) = '0' and key_n_2r(2) = '0'))then
							s_clk_cn(i) <= s_clk_cn(i) + 1;
						end if;
					else
						s_output(i) <= not s_output(i);
						s_clk_cn(i) <= 0;
					end if;
					
				else
					s_clk_cn(i) <= 0;
				end if;
				
			end loop;
				
				
				
				
		end if;
	
	
	
	
	end process;
	




end architecture rtl;