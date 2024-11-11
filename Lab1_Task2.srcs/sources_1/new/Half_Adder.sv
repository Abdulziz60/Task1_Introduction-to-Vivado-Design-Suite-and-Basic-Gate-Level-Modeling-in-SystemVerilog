`timescale 1ns / 1ps

module andgate (
input logic a,
input logic b,
output logic c
);
    and andgate (c, a, b);
endmodule

module xorgate (
input logic a,
input logic b,
output logic s
);
    assign s = a ^ b;
endmodule

module Half_Adder(

input logic a,
input logic b,
output logic s,
output logic c
    );
    
  andgate G1( c , a , b );
  xorgate G2( s , a , b );
  
endmodule


