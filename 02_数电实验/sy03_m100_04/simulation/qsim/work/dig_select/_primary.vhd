library verilog;
use verilog.vl_types.all;
entity dig_select is
    port(
        dig_04          : out    vl_logic_vector(5 downto 0);
        q_04            : in     vl_logic_vector(2 downto 0)
    );
end dig_select;
