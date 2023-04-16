`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2023 01:31:02
// Design Name: 
// Module Name: Trafik1
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


module Trafik1(
 input clk,
  output reg red,
  output reg blue,
  output reg green
);

reg [3:0] state = 4'b001;

always @(posedge clk) begin
  case(state)
    4'b001: begin // Red
      red <= 1;
      blue <= 0;
      green <= 0;
      state <= #100 4'b010;
    end
    4'b010: begin // Blue
      red <= 0;
      blue <= 1;
      green <= 0;
      state <= #20 4'b011;
    end
    4'b011: begin // Green
      red <= 0;
      blue <= 0;
      green <= 1;
      state <= #50 4'b001;
    end
  endcase
end

endmodule
