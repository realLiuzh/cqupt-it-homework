library verilog;
use verilog.vl_types.all;
entity code_select_vlg_sample_tst is
    port(
        ge_04           : in     vl_logic_vector(3 downto 0);
        q_04            : in     vl_logic_vector(2 downto 0);
        shi_04          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end code_select_vlg_sample_tst;
