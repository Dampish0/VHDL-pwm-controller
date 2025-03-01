--=================================================================
--
-- Startup reset
--
-- 
--
--    2019-02-14  Kent Abrahamsson
--                   First revision.
--
----=================================================================
library ieee;
   use ieee.std_logic_1164.all;
  
entity startup_reset is
generic(
   g_reset_hold_clk     : in natural range 10 to 1023);
port (
   clk                  : in std_logic;
   startup_reset_out    : out std_logic;
   startup_reset_out_n  : out std_logic);
end entity startup_reset;

architecture rtl of startup_reset is
   signal reset_cnt     : natural range 0 to g_reset_hold_clk := 0;
begin

   p_startup_reset : process(clk)
   begin
      if rising_edge(clk) then
         if reset_cnt < g_reset_hold_clk then
            startup_reset_out       <= '1';
            startup_reset_out_n     <= '0';
            reset_cnt               <= reset_cnt + 1;
         else
            -- Reset counter is max  
            -- Deassert output reset signals synchronous to 
            -- rising edge of clock 
            startup_reset_out       <= '0';
            startup_reset_out_n     <= '1';
         end if;
      end if;
   end process p_startup_reset;

end architecture rtl;