library verilog;
use verilog.vl_types.all;
entity dig_select_vlg_sample_tst is
    port(
        q_04            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end dig_select_vlg_sample_tst;
