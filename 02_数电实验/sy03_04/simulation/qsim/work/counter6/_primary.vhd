library verilog;
use verilog.vl_types.all;
entity counter6 is
    port(
        q               : out    vl_logic_vector(3 downto 0);
        cp              : in     vl_logic
    );
end counter6;
