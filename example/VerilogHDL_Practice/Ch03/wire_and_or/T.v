
`timescale 1ns/1ps

module T;
    reg A = 1'b0;
    reg B = 1'b0;
    wire C;
    wire D;
    wire E;

    wire_and_or UUT (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E));
        
       initial
         begin
           #500; // Final time:  500 ns
           $stop;
         end

       initial
         begin
 // -------------  Current Time:  100ns
           #100;
           A = 1'b1;
// -------------------------------------
// -------------  Current Time:  200ns
           #100;
           A = 1'b0;
           B = 1'b1;
// -------------------------------------
// -------------  Current Time:  300ns
           #100;
           A = 1'b1;
         end

endmodule

