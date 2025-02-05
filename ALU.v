module ALU (
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output [3:0] result,
    output carry_out
);

    assign {carry_out, result} = (sel == 3'b000) ? A + B :         // Addition
                                 (sel == 3'b001) ? A - B :         // Subtraction
                                 (sel == 3'b010) ? A & B :         // AND
                                 (sel == 3'b011) ? A | B :         // OR
                                 (sel == 3'b100) ? ~A : 4'b0000;   // NOT (only A)

endmodule
