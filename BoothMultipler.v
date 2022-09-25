`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2022 22:55:43
// Design Name: 
// Module Name: BoothMultipler
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


module BoothMultiplier(PRODUCT,M,Q);
input signed [3:0]M,Q;
output reg signed [7:0]PRODUCT;
reg [1:0]temp;
integer i;
reg q;
reg [3:0]M1;


always @(M,Q)
begin
PRODUCT=8'b0;
q=1'b0;
M1=-M;


for(i=0;i<4;i=i+1)
begin
temp={Q[i],q};

case(temp)
2'd1:PRODUCT[7:4]=PRODUCT[7:4]+M;
2'd2:PRODUCT[7:4]=PRODUCT[7:4]+M1;
endcase

PRODUCT=PRODUCT>>1;
PRODUCT[7]=PRODUCT[6];
q=Q[i];
end

end
endmodule

