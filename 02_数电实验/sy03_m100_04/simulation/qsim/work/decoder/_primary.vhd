library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        seg_04          : out    vl_logic_vector(6 downto 0);
        t_04            : in     vl_logic_vector(3 downto 0)
    );
end decoder;
