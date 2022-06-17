library verilog;
use verilog.vl_types.all;
entity dig_select_vlg_check_tst is
    port(
        dig_04          : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end dig_select_vlg_check_tst;
