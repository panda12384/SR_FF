module SR_ff (
    input wire s,
    input wire r,
    input wire clk,
    input wire rst,
    output reg Q
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        Q <= 1'b0;
    end else begin
        case ({s, r})
            2'b00 : Q <= Q;   
            2'b01 : Q <= 1'b0; 
            2'b10 : Q <= 1'b1; 
            2'b11 : Q <= 1'b0; 
        endcase
    end
end

endmodule
