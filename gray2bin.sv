module gray2bin #(
    parameter WIDTH = 5
) (
    input  logic [WIDTH-1:0] gray,
    output logic [WIDTH-1:0] bin
);

    always_comb begin
        bin[WIDTH-1] = gray[WIDTH-1]; //MSB remains constant
        for(i = WIDTH-2; i >= 0; i--) begin
            bin[i] = bin[i+1] ^ gray[i];
        end
    end 

endmodule
