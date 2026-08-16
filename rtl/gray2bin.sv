module gray2bin #(
    parameter WIDTH = 5
) (
    input  logic [WIDTH-1:0] gray,
    output logic [WIDTH-1:0] bin
);

    always_comb begin
        bin = gray;
        for(int i = WIDTH-1; i > 0; i--) begin
            bin[i-1] = bin[i] ^ gray[i-1];
        end
    end 

endmodule
