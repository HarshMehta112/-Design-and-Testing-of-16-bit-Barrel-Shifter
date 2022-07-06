`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2021 14:55:39
// Design Name: 
// Module Name: barrel_org
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
module barrel_org (S, A_P, B_P);
 input [3:0] S;
 input [15:0] A_P;
 output [15:0] B_P;
 reg [15:0] B_P;
always @ (A_P or S)
 begin
 case (S)
 4'b0000 : // Shift by 0
 begin
 B_P <= A_P;
 end
 4'b0001 : // Shift by 1
 begin
 B_P[15] <= A_P[0];
 B_P[14:0] <= A_P[15:1];
 end
 4'b0010 : // Shift by 2
 begin
 B_P[15:14] <= A_P[1:0];
 B_P[13:0] <= A_P[15:2];
 end
 4'b0011 : // Shift by 3
begin
 B_P[15:13] <= A_P[2:0];
 B_P[12:0] <= A_P[15:3];
 end
 4'b0100 : // Shift by 4
 begin
 B_P[15:12] <= A_P[3:0];
 B_P[11:0] <= A_P[15:4];
 end
 4'b0101 : // Shift by 5
 begin
 B_P[15:11] <= A_P[4:0];
 B_P[10:0] <= A_P[15:5];
 end
 4'b0110 : // Shift by 6
 begin
 B_P[15:10] <= A_P[5:0];
 B_P[9:0] <= A_P[15:6];
 end
 4'b0111 : // Shift by 7
 begin
 B_P[15:9] <= A_P[6:0];
 B_P[8:0] <= A_P[15:7];
 end
4'b1000 : // Shift by 8
 begin
 B_P[15:8] <= A_P[7:0];
 B_P[7:0] <= A_P[15:8];
 end
 4'b1001 : // Shift by 9
 begin
 B_P[15:7] <= A_P[8:0];
 B_P[6:0] <= A_P[15:9];
 end
 4'b1010 : // Shift by 10
 begin
 B_P[15:6] <= A_P[9:0];
 B_P[5:0] <= A_P[15:10];
 end
 4'b1011 : // Shift by 11
 begin
 B_P[15:5] <= A_P[10:0];
 B_P[4:0] <= A_P[15:11];
 end
 4'b1100 : // Shift by 12
 begin
 B_P[15:4] <= A_P[11:0];
 B_P[3:0] <= A_P[15:12];
end
 4'b1101 : // Shift by 13
 begin
 B_P[15:3] <= A_P[12:0];
 B_P[2:0] <= A_P[15:13];
 end
 4'b1110 : // Shift by 14
 begin
 B_P[15:2] <= A_P[13:0];
 B_P[1:0] <= A_P[15:14];
 end
 4'b1111 : // Shift by 15
 begin
 B_P[15:1] <= A_P[14:0];
 B_P[0] <= A_P[15];
 end
 default :B_P <= A_P;
 endcase
 end
endmodule