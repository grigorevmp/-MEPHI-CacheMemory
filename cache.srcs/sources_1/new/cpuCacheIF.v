`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2023 17:28:35
// Design Name: 
// Module Name: cpuCacheIF
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


module cpuCacheIF #(
  parameter ATEG_WIDTH = 8,
  parameter AINDEX_WIDTH = 4,
  parameter SYS_WIDTH = 32,
  parameter AOFFSET_WIDTH = 4
)(
    input cpu_clk,
    input cache_clk,
    
    input reset,
    
    input [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr,
    
    input wr_cpu,
    input rd_cpu,
    
    input [SYS_WIDTH-1:0] WData,
    input [SYS_WIDTH-1:0] RData,
    
    input cache_ack,
    input [3:0] bval,
    
    input ce,
    
    
    
    output reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr_cache,
    output reg [SYS_WIDTH-1:0] WData_cache,
    output reg [3:0] bval_cache,
    output reg wr_cpu_cache,
    output reg rd_cpu_cache,
    output reg [SYS_WIDTH-1:0] RData_cpu,
    output reg ack_cpu
);

    reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] Q_addr_cache;
    reg [SYS_WIDTH - 1:0] Q_WData_cache;
    reg [3:0] Q_b_val_cache;
    reg  Q_wr_cpu_cache;
    reg  Q_rd_cpu_cache;

   always @(posedge cpu_clk) begin
     if (reset) begin 
       Q_addr_cache <= 'b0;
       Q_WData_cache <= 'b0;
       Q_b_val_cache <= 'b0;
       Q_wr_cpu_cache <= 'b0;
       Q_rd_cpu_cache <= 'b0;
     end else if (ce)begin
       Q_addr_cache <= addr;
       Q_WData_cache <= WData;
       Q_b_val_cache <= bval;
       if ((wr_cpu == 1) || (rd_cpu == 1)) begin
           Q_wr_cpu_cache <= wr_cpu;
           Q_rd_cpu_cache <= rd_cpu;
       end;
    end 
   end
    
   always @(posedge cache_clk) begin
      if (reset) begin
        addr_cache      <= 'b0;
        WData_cache     <= 'b0;
        bval_cache      <= 'b0;
        wr_cpu_cache    <= 'b0;
        rd_cpu_cache    <= 'b0;
      end else if (ce) begin
        addr_cache      <= Q_addr_cache;
        WData_cache     <= Q_WData_cache;
        bval_cache      <= Q_b_val_cache;
        wr_cpu_cache    <= Q_wr_cpu_cache;
        rd_cpu_cache    <= Q_rd_cpu_cache;
    end 
  end 
    
    reg [SYS_WIDTH - 1:0] Q_Rdata_cpu;
    reg  Q_ack_cpu;
     
    always @(posedge cpu_clk) begin
        if (reset) begin
          RData_cpu     <= 'b0;
          ack_cpu       <= 'b0;
        end else if (ce) begin
          RData_cpu     <= Q_Rdata_cpu;
          ack_cpu       <= ack_cpu;
        end 
    end 
    
    always @(posedge cache_clk) begin
      if (reset) begin
        Q_Rdata_cpu     <= 'b0;
        Q_ack_cpu     <= 'b0;
      end else if (ce) begin
        Q_Rdata_cpu <= RData;
        ack_cpu <= cache_ack;
    end 
   end 
   
endmodule