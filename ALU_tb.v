module ALU_tb;

    reg [3:0] A, B;
    reg [2:0] sel;
    wire [3:0] result;
    wire carry_out;

    // Instantiate ALU
    ALU uut (
        .A(A),
        .B(B),
        .sel(sel),
        .result(result),
        .carry_out(carry_out)
    );

    initial begin
        // Test addition
        A = 4'b0101; B = 4'b0011; sel = 3'b000; #10; // A + B = 1000
        $display("Addition: A=%b, B=%b, Result=%b, Carry=%b", A, B, result, carry_out);

        // Test subtraction
        A = 4'b1001; B = 4'b0011; sel = 3'b001; #10; // A - B = 0110
        $display("Subtraction: A=%b, B=%b, Result=%b, Carry=%b", A, B, result, carry_out);

        // Test AND
        A = 4'b1010; B = 4'b1100; sel = 3'b010; #10; // A & B = 1000
        $display("AND: A=%b, B=%b, Result=%b", A, B, result);

        // Test OR
        A = 4'b1010; B = 4'b0101; sel = 3'b011; #10; // A | B = 1111
        $display("OR: A=%b, B=%b, Result=%b", A, B, result);

        // Test NOT
        A = 4'b1101; sel = 3'b100; #10; // NOT A = 0010
        $display("NOT: A=%b, Result=%b", A, result);

        $stop;
    end
endmodule
