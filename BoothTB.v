`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2022 22:56:30
// Design Name: 
// Module Name: BoothTB
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


module BoothMultiplierTB;
wire[7:0]PRODUCT;
reg[3:0]M,Q;
BoothMultiplier BM(PRODUCT,M,Q);

initial
begin
$monitor($time,"m=%d,Q=%d,PRODUCT=%d",M,Q,PRODUCT);
#2 M=2;Q=2;
#2 M=3;Q=3;
#2 M=4;Q=3;
#2 M=5;Q=4;
#2 M=6;Q=4;
#2 M=7;Q=5;

end

endmodule
