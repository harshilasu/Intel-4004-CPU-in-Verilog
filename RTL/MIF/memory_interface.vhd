library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity memory_interface is
	generic ( addr_width: natural := 26;
				data_width: natural := 16);
	port(
		-- These pins are used to talk to the celular ram  (memory_interface <--> cellular_ram);
		addr_o : out std_logic_vector( addr_width-1 downto 0);
		clk_o : out  std_logic;
		addr_valid_o :out std_logic;
		cntl_reg_enable_o : out std_logic;
		chip_enable_o : out std_logic;
		output_enable_o : out std_logic;
		write_en_o : out std_logic;
		lower_byte_en_o : out std_logic;
		upper_byte_en_o : out std_logic;
		data_io : inout std_logic_vector( data_width-1 downto 0);
		wait_i : in std_logic;
		-- These are the pins used to help interface the memory as if it were a block ram ( some module <--> memory_interface);
		addr_i : in std_logic_vector (addr_width-1 downto 0);
		we_i : in std_logic ;
		data_i : in std_logic_vector (data_width-1 downto 0);
		data_o : out std_logic_vector (data_width-1 downto 0);
		clk_i : in std_logic; 
		go_i : in std_logic --top module should set this to 0.  when ready to use, set to 1 for one cycle (max 90 ns) then bring down.  when go_i is high it will read or write otherwise it will be idle.;
	);
end memory_interface;

--#start_arch
architecture Behavioral1 of memory_interface is
	--This arch allows you to read or write every 100ns.  You must raise a go signal
	--high to tell it to read/write otherwise it will remain in an idle state.  lower the go
	--signal before performing another read/write.  10% duty cycle of go recommended.
	--Read/write of less then 100ns can result in undefined behavior.
	constant init_time_const : integer := (15100);
	constant read_pre_time_const: integer := (2-1);--(4-1);
	constant read_oe_time_const: integer := (4-1);--(3-1);
	constant write_pre_time_const: integer := (1-1);--(2-1);
	constant write_we_time_const: integer := (6-1);--(6-1);
	type state is ( init, idle, read_ce_high,
					read_pre, read_oe_low, read_get_data,
					write_pre, write_we_low, write_set_data);
	signal next_st, curr_st: state:= init;
	signal cnt, next_cnt : integer range 0 to init_time_const := 0;
	signal currCRAMaddr_s, CRAMaddr_s : std_logic_vector(addr_width-1 downto 0) := (others => '0');
	signal currCRAMadv_s, CRAMadv_s : std_logic := '1';
	signal currCRAMce_s, CRAMce_s : std_logic := '1';
	signal currCRAMlb_s, CRAMlb_s : std_logic := '1';
	signal currCRAMub_s, CRAMub_s : std_logic := '1';
	signal currCRAMoe_s,CRAMoe_s : std_logic := '1';
	signal currCRAMwe_s, CRAMwe_s : std_logic := '1';
	signal currCRAMwrite2dq_s, CRAMwrite2dq_s : std_logic := 'Z';
	signal curr_data_o_s, data_o_s : std_logic_vector(data_width-1 downto 0):= (others => '0');
	signal go_s : std_logic := '0';
begin

			addr_o <= currCRAMaddr_s;
			clk_o <= '0';
			addr_valid_o <= currCRAMadv_s;
			cntl_reg_enable_o <= '0';
			chip_enable_o <= currCRAMce_s;
			lower_byte_en_o <= currCRAMlb_s;
			upper_byte_en_o <= currCRAMub_s;
			output_enable_o <= currCRAMoe_s;
			write_en_o <= currCRAMwe_s;
			data_o <= curr_data_o_s;
			data_io <= data_i when currCRAMwrite2dq_s = '1' else (others => 'Z');
	
	sync_data: process (clk_i) 
	begin
		if clk_i = '1' and clk_i'event then
			curr_st <= next_st;
			cnt <= next_cnt;
			currCRAMaddr_s <= CRAMaddr_s;
			currCRAMadv_s <= CRAMadv_s;
			currCRAMce_s <= CRAMce_s;
			currCRAMlb_s <= CRAMlb_s;
			currCRAMub_s <= CRAMub_s;
			currCRAMoe_s <= CRAMoe_s;
			currCRAMwe_s <= CRAMwe_s;
			currCRAMwrite2dq_s <= CRAMwrite2dq_s;
			curr_data_o_s <= data_o_s;
			
		end if;
	end process sync_data;
	---
	output_proc: process (curr_st, addr_i, we_i, cnt, go_i,  data_io,
						currCRAMaddr_s, currCRAMadv_s, currCRAMce_s,
						currCRAMlb_s, currCRAMub_s, currCRAMoe_s,
						currCRAMwe_s, curr_data_o_s,
						currCRAMwrite2dq_s
						)
	begin
		--preset data to prevent latches from forming
		next_cnt <= cnt; 
		CRAMaddr_s <= currCRAMaddr_s;
		CRAMadv_s <= currCRAMadv_s;
		CRAMce_s <= currCRAMce_s;
		CRAMlb_s <= currCRAMlb_s;
		CRAMub_s <= currCRAMub_s;
		CRAMoe_s <= currCRAMoe_s;
		CRAMwe_s <= currCRAMwe_s;
		CRAMwrite2dq_s <= currCRAMwrite2dq_s;
		data_o_s <= curr_data_o_s;
		--use conditionals to decide final signal value
		if curr_st = init then 
			if cnt >= init_time_const then next_cnt <= 0;
			else next_cnt <= cnt + 1;
			end if;
			CRAMaddr_s <= (others => '0');
			CRAMadv_s <= '1';
			CRAMce_s <= '1';
			CRAMlb_s <= '1';
			CRAMub_s <= '1';
			CRAMoe_s <= '1';
			CRAMwe_s <= '1';
			CRAMwrite2dq_s <= '0';
			data_o_s <= (others => '0');
		elsif curr_st =  idle then
			if go_i = '1' then
				if we_i = '1' then
					CRAMoe_s <= '0';
					CRAMwe_s <= '0';
					CRAMce_s <= '1';
				else
					CRAMoe_s <= '1';
					CRAMwe_s <= '1';
					CRAMce_s <= '0';
				end if;
			else
				CRAMoe_s <= '1';
				CRAMwe_s <= '1';
				CRAMce_s <= '1';
			end if;
			CRAMaddr_s <= addr_i;
			CRAMadv_s <= '0';
			CRAMlb_s <= '1';
			CRAMub_s <= '1';
			CRAMwrite2dq_s <= '0';
		elsif curr_st = read_ce_high then
			CRAMce_s <= '1';
		elsif curr_st = read_pre then 
			if cnt >= read_pre_time_const then next_cnt <= 0;
			else next_cnt <= cnt + 1;
			end if;
			CRAMce_s <= '0';
			CRAMlb_s <= '0';
			CRAMub_s <= '0';
		elsif curr_st = read_oe_low then 
			CRAMoe_s <= '0';
			if cnt >= read_oe_time_const then 
				next_cnt <= 0;
			else 
				next_cnt <= cnt + 1;
			end if;
		elsif curr_st = read_get_data then 
			CRAMoe_s <= '1';
			CRAMce_s <= '1';
			CRAMlb_s <= '1';
			CRAMub_s <= '1';
			data_o_s <= data_io;
		elsif curr_st = write_pre then 
			if cnt >= write_pre_time_const then next_cnt <= 0;
			else next_cnt <= cnt + 1;
			end if;
			CRAMwe_s <= '1';
			CRAMce_s <= '0';
			CRAMlb_s <= '0';
			CRAMub_s <= '0';
		elsif curr_st = write_we_low then 
			if cnt >= write_we_time_const then 
				CRAMwrite2dq_s <= '1';
				next_cnt <= 0;
			else 
				next_cnt <= cnt + 1;
			end if;
			CRAMwe_s <= '0';
		elsif curr_st = write_set_data then
			CRAMwe_s <= '1';
			CRAMce_s <= '1';
			CRAMlb_s <= '1';
			CRAMub_s <= '1';
			CRAMwrite2dq_s <= '0';
		else
			CRAMaddr_s <= (others => '0');
			CRAMadv_s <= '1';
			CRAMce_s <= '1';
			CRAMlb_s <= '1';
			CRAMub_s <= '1';
			CRAMoe_s <= '1';
			CRAMwe_s <= '1';
			CRAMwrite2dq_s <= '0';
			data_o_s <= (others => '0');
			next_cnt <= 0;
		end if;
	end process output_proc;
	---
	trans_proc : process ( curr_st, cnt, go_i , we_i)
	begin 
		next_st <= curr_st;
		case curr_st is
			when init =>
				if cnt >= init_time_const then next_st <= idle; end if;
			when idle =>
				if go_i = '1' then
					if we_i = '1' then --do write
						next_st <= write_pre;
					else --do read
						next_st <= read_ce_high;
					end if;
				end if;
			when read_ce_high =>
				next_st <= read_pre;
			when read_pre =>
				if cnt >= read_pre_time_const then next_st <= read_oe_low; end if;
			when read_oe_low =>
				if cnt >= read_oe_time_const then next_st <= read_get_data; end if;
			when read_get_data =>
				next_st <= idle;
			when write_pre =>
				if cnt >= write_pre_time_const then next_st <= write_we_low; end if;
			when write_we_low =>
				if cnt >= write_we_time_const then next_st <= write_set_data; end if;
			when write_set_data =>
				next_st <= idle;
			when others =>
				next_st <= idle;
		end case;
	end process trans_proc;
end Behavioral1;
--#end_arch;
