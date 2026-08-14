module gray2bin #(
    parameter WIDTH = 5
) (
    input  wire [WIDTH-1:0] gray,
    output reg  [WIDTH-1:0] bin
);

    integer i;

    always @(*) begin
        bin = gray;
        for (i = WIDTH-1; i > 0; i = i - 1) begin
            bin[i-1] = bin[i] ^ gray[i-1];
        end
    end

endmodule
