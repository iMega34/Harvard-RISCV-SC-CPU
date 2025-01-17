
module PC (
    input clk, reset,
    input [31:0] pc_input,
    output reg [31:0] pc_output
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            pc_output <= 32'b0;
        else
            pc_output <= pc_input;
    end

endmodule

module NextPC (
    input [31:0] from_pc,
    output [31:0] next_to_pc
);

    assign next_to_pc = (from_pc + 1) % 32;

endmodule
