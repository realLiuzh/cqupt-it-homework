library verilog;
use verilog.vl_types.all;
entity code_select is
    port(
        t_04            : out    vl_logic_vector(3 downto 0);
        q_04            : in     vl_logic_vector(2 downto 0);
        shi_04          : in     vl_logic_vector(3 downto 0);
        ge_04           : in     vl_logic_vector(3 downto 0)
    );
end code_select;
