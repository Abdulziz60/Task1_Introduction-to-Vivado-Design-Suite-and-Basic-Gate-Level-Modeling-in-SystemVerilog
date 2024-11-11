`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 06:37:28 PM
// Design Name: 
// Module Name: bt_Half_Adder
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


module bt_Half_Adder;

logic a, b;
logic s, c;

andgate dut (
.a(a),
.b(b),
.c(c)
);

xorgate uut (
.a(a),
.b(b),
.s(s)
);

initial begin
$display("Time\t a\t b\t s\t c\t f");
$display("------------------------");


a = 0; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
a = 0; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
a = 1; b = 0; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);
a = 1; b = 1; #10;
$display("%0t\t %b\t %b\t %b\t %b", $time, a, b, s, c);

$finish;
end
endmodule
