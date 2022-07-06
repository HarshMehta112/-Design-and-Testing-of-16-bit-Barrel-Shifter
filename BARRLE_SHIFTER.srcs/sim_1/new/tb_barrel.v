`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 14:57:37
// Design Name: 
// Module Name: tb_barrel
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


module tb_barrel ();
reg [3:0] S;
 reg [15:0] A_P;
 wire [15:0] B_P;
barrel_org u1(S, A_P, B_P);
 integer i,j;
 /*initial
 begin
 A_P = 16'b1010011110001110;
 end*/
 initial
 begin
 for(j=0;j<65536;j=j+1)
 begin
 for(i=0;i<16;i=i+1)
 begin
 A_P = j;
 S=i;
 #5;
 end
 end
 end
 initial
 $monitor ("S=%b,A_P=%b,B_P=%b",S, A_P, B_P);
 initial
 #50000000 $finish;
endmodule
