module counter(
    input logic [4:0] data,
    input load,
    input enable,
    input clk,
    input rst_,
    output logic [4:0] count
);

timeunit 1ns;
timeprecision 100ps;

always_ff @(posedge clk) begin
    if (!rst_)
        count <= 5'b0;
    else
        if(load)
            count <= data;
        else if (enable)
            count <= count + 1;
        // else: hold previous value
end
endmodule