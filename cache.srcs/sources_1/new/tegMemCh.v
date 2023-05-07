`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2023 23:27:34
// Design Name: 
// Module Name: tegMemCh
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


module tegMemChannel #(
  parameter ATEG_WIDTH = 8,
  parameter AINDEX_WIDTH = 4
 )(
  input clk,
  input reset,
  input [ATEG_WIDTH + AINDEX_WIDTH - 1:0] addr,
  input wr,
  input plru_ce,
  input md,
  
  output [ATEG_WIDTH + 2 - 1:0] tegOut, // TEG + Ack + M
  output hit
 );
  
  // CONSTANTS 
  localparam MEM_SIZE   = 2**AINDEX_WIDTH;
  localparam MEM_WIDTH  = ATEG_WIDTH + 2;
  localparam VAL_BIT    = 1;                // VALIDATION BIT
  localparam MOD_BIT    = 0;                // MODIFICATION BIT

  // ADDRESS: TAG
  wire [ATEG_WIDTH - 1:0] aTeg = addr[ATEG_WIDTH + AINDEX_WIDTH - 1:AINDEX_WIDTH];
  
  // ADDRESS: INDEX
  wire [AINDEX_WIDTH - 1:0] aIndex = addr[AINDEX_WIDTH - 1:0];

  // TOTAL MEMORY
  reg [MEM_WIDTH - 1:0] tegMem [0:MEM_SIZE-1];
  
  // MEMORY OUT
  wire [MEM_WIDTH - 1:0]        tegMemOut = tegMem[aIndex];
      wire [ATEG_WIDTH - 1:0]   moTeg = tegMemOut[MEM_WIDTH - 1:VAL_BIT + 1];
      wire                      moVal = tegMemOut[VAL_BIT];
      wire                      moMod = tegMemOut[MOD_BIT];
      
      wire [ATEG_WIDTH - 1:0]   miTeg = wr ? aTeg : moTeg;
      wire                      miVal = wr ? 1'b1 : moVal;
      wire                      miMod = md ? 1'b1 : wr ? 1'b0 : moMod;

  // MEMORY INPUT
  wire [MEM_WIDTH - 1:0]        tegMemIn = {miTeg, miVal, miMod};
	
  // Let's declare condition for updating [tegMem] from [tegMemIn]
  wire ce = (hit == 1'b1 || plru_ce == 1'b1) ? 1'b1 : 1'b0 ;

  assign hit    = (moTeg == aTeg && moVal == 1'b1) ? 1'b1 : 1'b0 ;
  assign tegOut = tegMemOut;
  
  integer i;
  reg [MEM_WIDTH - 1:0] rstVal;
  
  always @(posedge clk) begin
    rstVal[MOD_BIT] = 1'b0;
    rstVal[VAL_BIT] = 1'b0;
    if (reset) begin
      for(i = 0; i < MEM_SIZE; i = i + 1)
        tegMem[i] <= rstVal;
    end else if (ce) begin
        tegMem[aIndex] <= tegMemIn;
    end
  end 

endmodule