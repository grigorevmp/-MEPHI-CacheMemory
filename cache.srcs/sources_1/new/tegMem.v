`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2023 23:27:09
// Design Name: 
// Module Name: tegMem
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




module tegMem #(
  parameter ATEG_WIDTH = 8,
  parameter AINDEX_WIDTH = 4,
  parameter CHANNEL_WIDTH = 2
)(

  input clk,
  input reset,
  input plru,
  input [ATEG_WIDTH + AINDEX_WIDTH - 1:0] addr,
  input wr,
  input md,
  output [ATEG_WIDTH + 2 - 1:0] tegOut,
  output [AINDEX_WIDTH - 1:0] index,
  output [CHANNEL_WIDTH - 1:0] chan,
  output hit
);

  localparam CHAN_CNT = 2**CHANNEL_WIDTH;
  
  assign index = addr[AINDEX_WIDTH -1:0];
  
  wire hitAll;
  
  // Channel with hit
  reg [CHANNEL_WIDTH - 1:0] hitCh;
    
  // Array of tags from all channels
  wire [CHANNEL_WIDTH - 1:0] plruCh;  
  wire [CHAN_CNT - 1:0] chHit;   
  wire [CHAN_CNT - 1:0] plruCh_u;
  
  // Array of tags from all channels
  wire [ATEG_WIDTH + 2 - 1:0] chTegOut [CHAN_CNT - 1:0];
  
  // Connect channels
  genvar i;
  generate
    for (i = 0; i < CHAN_CNT; i = i + 1) begin  
    
      assign plruCh_u[i] = (plruCh == i) && !hitAll ? 1'b1 : 1'b0;
  
      tegMemChannel tegMemCh_inst (
        .clk(clk),    
        .reset(reset),
        .addr(addr),
        .wr(wr),
        .plru_ce(plruCh_u[i]),
        .md(md),
        .tegOut(chTegOut[i]),
        .hit(chHit[i])
      );
      
      
    end
  endgenerate
 
  
  integer j;
  // KS for hit channel
  always @(*) begin
    hitCh <= {CHANNEL_WIDTH{1'b0}};
    for (j = 0; j < CHAN_CNT; j = j + 1) begin
      if (chHit[j] == 1'b1) begin
        hitCh <= j;
      end
    end
  end   
  
  // PLRU KS
  plru PLRU_KS (
    .clk(clk),
    .plru(plru),
    .reset(reset),   
    .chIn(chan),
    .chOut(plruCh)
  );
  
  // There is any hit, if chHit is not '0000'
  assign hitAll = chHit != {CHAN_CNT{1'b0}};
  
  // Output
  assign chan = hitAll ? hitCh : plruCh;
  assign hit = hitAll;
  assign tegOut = chTegOut[chan][ATEG_WIDTH + 2 - 1: 0];
  
endmodule
