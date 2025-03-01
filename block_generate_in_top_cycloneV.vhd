
begin -- architecture

   ledr(9 downto 2)     <= (others => '0');

   b_gen_pll : if (not g_simulation) generate
		-- Instance of PLL
      i_startup_reset : entity work.startup_reset
         generic map(
            g_reset_hold_clk     => 1023)
         port map(
            clk                  => clock_50,
            startup_reset_out    => pll_startup_reset,
            startup_reset_out_n  => open);

		i_altera_pll : pll_cyclonev.pll_cycloneV
		port map(
			refclk   => clock_50, 	         -- refclk.clk   
			rst      => pll_startup_reset,   -- reset.reset  
			outclk_0 => open,			         -- 25MHz clock  
			outclk_1 => clk_50,		         -- 50MHz clock  
			outclk_2 => open,			         -- outclk2.clk  
			locked   => pll_locked);         -- locked.export

      i_reset_ctrl : entity work.reset_ctrl
      generic map(
         g_reset_hold_clk  => 127)
      port map(
         clk         => clk_50,
         reset_in    => '0',
         reset_in_n  => pll_locked, -- reset active if PLL is not locked

         reset_out   => reset,
         reset_out_n => open);
   end generate;

   b_sim_clock_gen : if g_simulation generate
      clk_50   <= clock_50;
      p_internal_reset : process
      begin
         reset    <= '1';
         wait until clock_50 = '1';
         wait for 1 us;
         wait until clock_50 = '1';
         reset    <= '0';
         wait;
      end process p_internal_reset;
   end generate;
