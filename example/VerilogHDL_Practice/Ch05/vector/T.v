
`timescale 1ns/1ps

module T;
    reg [3:0] A = 4'b0101;
    reg [4:0] B = 5'b11110;
    wire [2:0] W;
    wire [4:0] X;
    wire [2:0] Y;
    wire [4:0] Z;


    op UUT (
        .A(A),
        .B(B),
        .W(W),
        .X(X),
        .Y(Y),
        .Z(Z));

    initial
    begin
      #800 // Final time:  800 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        A = 4'b1100;
        B = 5'b10101;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        A = 4'b1001;
        B = 5'b00001;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        A = 4'b0001;
        B = 5'b10010;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        A = 4'b1110;
        B = 5'b01001;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        A = 4'b0111;
        B = 5'b01011;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        A = 4'b1000;
        B = 5'b10010;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        A = 4'b1010;
        B = 5'b00000;
        // -------------------------------------
        // -------------  Current Time:  800ns
        #100;
        B = 5'b00111;
    end

endmodule

