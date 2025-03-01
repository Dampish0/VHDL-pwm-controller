library ieee;
   use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
library work;
	
entity pwm_module_top is
generic(
	 g_simulation : boolean := false
);
port(
	clk : in std_logic;

	--disp output
	hex0 : out std_logic_vector(6 downto 0);
	hex1 : out std_logic_vector(6 downto 0);
	hex2 : out std_logic_vector(6 downto 0);
	
	--key ctrl
	key_n : in std_logic_vector(3 downto 0);

	--error from uart and pwm result
	ledr : out std_logic_vector(9 downto 0);
	
	--uart code
	rx   : in  std_logic;
	tx   : out std_logic

);
end entity pwm_module_top;


architecture str of pwm_module_top is



component pll_altera is
	port (
		refclk   : in  std_logic := '0'; --  refclk.clk
		rst      : in  std_logic := '0'; --   reset.reset
		outclk_0 : out std_logic;        -- outclk0.clk
		outclk_1 : out std_logic;        -- outclk1.clk
		outclk_2 : out std_logic;        -- outclk2.clk
		locked   : out std_logic         --  locked.export
	);
end component pll_altera;
	

	
	
	--------------------
	--SIGNALS TO CONNECT COMPOMONENTS
	--------------------
	--uart and key signals simplified to 1 vector
	signal action_signals : std_logic_vector(7 downto 0);
	signal uart_tx_valid : std_logic := '0';
	signal uart_tx_ready : std_logic;
	signal uart_tx_data : std_logic_vector(7 downto 0) := (others => '0');
	signal recieved_data : std_logic_vector(7 downto 0);
	signal recieved_data_valid : std_logic;
	
	signal s_dc : integer range 0 to 100 := 0;
	signal s_dc_updated : std_logic;
	
	--resets signals
	signal Complete_reset : std_logic := '0';
	signal Complete_reset_n : std_logic := '1';
	signal s_startup_reset : std_logic;
	
	
	--timing signals
	signal clk_50 : std_logic;
	signal pll_locked : std_logic := '1';

	
	
begin

----------------------------------------------------------------------------------------------
--CONNECTING ALL THE COMPONENTS TO THEIR RESPECTIVE COMPONENTS
--
--
--
--
--
--
----------------------------------------------------------------------------------------------

	ledr(9 downto 2) <= (others => '0');
	Complete_reset_n <= not Complete_reset;
	create_pll : if(not (g_simulation)) generate

		i_start_reset_a : entity work.startup_reset 
		generic map(
			g_reset_hold_clk => 1023)
		port map(
			clk                  => clk,
			startup_reset_out    => s_startup_reset,
			startup_reset_out_n  => open);
			
		i_pll_a : pll_altera
		port map(
			refclk   => clk, -- clk
			rst      => s_startup_reset, -- reset
			outclk_0 => open,        -- clk 25
			outclk_1 => clk_50,       -- clk 50
			outclk_2 => open,        -- clk 100
			locked   => pll_locked         -- export
		);
		
		i_reset_ctrl_a : entity work.reset_ctrl
		generic map(
		g_reset_hold_clk => 200
		)
		port map(
		   clk         => clk_50,
			reset_in    => '0',
			reset_in_n  => pll_locked,
			reset_out   => complete_reset,
			reset_out_n => open);
		
		
	end generate;
	
	create_simulate_pll : if(g_simulation) generate
		clk_50 <= clk;
		
		process
		begin
			Complete_reset <= '1';
			wait until clk_50 = '1';
			wait for 10 us;
			wait until clk_50 = '1';
			Complete_reset <= '0';
			wait;
		end process;
	
	
	end generate;
		
		
	--HANDLING INPUT------------------------------------
	i_key_ctrl_a : entity work.key_ctrl
	port map(
	clk => clk_50,
	reset_n => complete_reset_n,
	key_n => key_n,

	key_on => action_signals(0),
	key_off => action_signals(1),
	key_up => action_signals(2),
	key_down => action_signals(3)
	);	
	
	
	
	i_serial_uart_a : entity work.serial_uart
	generic map(
		g_reset_active_state  => '1',
      g_serial_speed_bps    => 115200,
      g_clk_period_ns       => 20,
      g_parity              => 0
	)
	port map(
		clk => clk_50,              
      reset => complete_reset,               
      rx => rx,          
      tx => tx,                  

      received_data 	=> recieved_data,     
      received_data_valid  => recieved_data_valid,
      received_error => ledr(1),
      received_parity_error => open,
      transmit_ready => uart_tx_ready,          
      transmit_data_valid => uart_tx_valid,  
      transmit_data => uart_tx_data         
		);
		
		
	i_serial_ctrl_a : entity work.serial_Ctrl
	port map(
		clk => clk_50,
		reset_n => complete_reset_n,
		data => recieved_data,
		data_valid => recieved_data_valid,
		
		serial_on => action_signals(4),
		serial_off => action_signals(5),
		serial_up => action_signals(6),
		serial_down => action_signals(7)
		);
		
	------------------------------------------------------

	

   i_dc_disp_a : entity work.dc_disp_ctrl
	port map(
		clk => clk_50,
		reset_n => complete_reset_n,

		pwm_dc => s_dc,
		pwm_dc_updated => s_dc_updated,
		
		hex0 => hex0,
		hex1 => hex1,
		hex2 => hex2,
		
		tx_ready => uart_tx_ready,
		tx_data => uart_tx_data,
		tx_valid => uart_tx_valid
	);
		
	
	
	
	
		
	i_pwm_ctrl_a : entity work.pwm_ctrl
		port map(
		clk => clk_50,
		reset_n => complete_reset_n,
		ledr => ledr(0),

		key_on => action_signals(0),
		key_off => action_signals(1),
		key_up => action_signals(2),
		key_down => action_signals(3),

		serial_on => action_signals(4),
		serial_off => action_signals(5),
		serial_up => action_signals(6),
		serial_down => action_signals(7),

		current_dc => s_dc,
		current_dc_update => s_dc_updated
		);
		
		

end architecture str;