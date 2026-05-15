`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2026 13:02:43
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input we,
    input [3:0] addr,
    input [7:0] data_in,
    output reg [7:0] data_out
);

reg [7:0] memory [15:0];

always @(posedge clk)
begin
    if (we)
        memory[addr] <= data_in;   
    else
        data_out <= memory[addr];  
end

endmodule
