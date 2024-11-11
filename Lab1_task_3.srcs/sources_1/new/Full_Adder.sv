`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 08:41:57 PM
// Design Name: 
// Module Name: Full_Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module andgate (
input logic a,
input logic b,
output logic c
);
    assign c = a & b ;
endmodule

module xorgate (
input logic a,
input logic b,
output logic s
);
    assign s = a ^ b;
endmodule

module orgate (
input logic a,
input logic b,
output logic c
);
    assign c = a | b;
endmodule

module Full_Adder(
    input a,
    input b,
    input Cin,
    output s,
    output c
    );
    
    logic w1,w2,w3;
    
    xorgate G1( .a(a), .b(b), .s(w1)); 
    andgate G2( .a(a), .b(b), .c(w2));
    andgate G3( .a(w1), .b(Cin), .c(w3));
    xorgate G4( .a(w1), .b(Cin), .s(s));
    orgate  G5( .a(w3), .b(w2), .c(c));
    
endmodule
