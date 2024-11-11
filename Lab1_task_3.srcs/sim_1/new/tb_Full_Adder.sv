`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 08:43:22 PM
// Design Name: 
// Module Name: tb_Full_Adder
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
module tb_Full_Adder;
   logic a, b, Cin;
   logic s, c;
   
   Full_Adder uut (
        .a(a),
        .b(b),
        .Cin(Cin),
        .s(s),
        .c(c)
    );
    
    andgate dut (
    .a(a),
    .b(b)
    
    );
    
    xorgate uu (
    .a(a),
    .b(b)
    
    );
    
    orgate uus (
    .a(a),
    .b(b)
    
    );
    
    initial begin
$display("Time\t a\t b\t Cin\t s\t c\t f");
$display("------------------------");

a = 0; b = 0; Cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);
a = 0; b = 0; Cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);
a = 0; b = 1; Cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);
a = 0; b = 1; Cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);

a = 1; b = 0; Cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);
a = 1; b = 0; Cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);
a = 1; b = 1; Cin = 0; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);
a = 1; b = 1; Cin = 1; #10;
$display("%0t\t %b\t %b\t %b\t  %b", $time, a, b, Cin, s, c);

$finish;
end
endmodule
