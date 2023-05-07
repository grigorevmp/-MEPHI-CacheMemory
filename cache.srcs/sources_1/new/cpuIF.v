`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2023 20:58:51
// Design Name: 
// Module Name: cpuIF
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


module cpuIF #(
  parameter ATEG_WIDTH = 8,
  parameter AINDEX_WIDTH = 4,
  parameter SYS_WIDTH = 32,
  parameter AOFFSET_WIDTH = 4,
  parameter CACHE_LINE = 128,
  parameter RAM_LINE = 16
)(
    input en_cpu,
    input en_from_cache,
    input cpu_clk,
    input cache_clk,
    
    input reset,
    input cpu_reset,
    
    input [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] Addr,
    
    input Wr,
    input Rd,
    
    input [SYS_WIDTH-1:0] WData,
    input [SYS_WIDTH-1:0] cache_Rdata,
    
    input cache_Ack,
    input [3:0] BVal,
    
    output reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] cache_Addr,
    output reg [SYS_WIDTH-1:0] cache_WData,
    output reg [3:0] cache_BVal,
    output reg cache_Wr,
    output reg cache_Rd,
    output reg [SYS_WIDTH-1:0] RData,
    output reg Ack,
    output reg en_to_cache
);

reg [CACHE_LINE-1:0] REG_CACHE2FIFO;
reg CACHE2FIFO_LOAD;

reg [RAM_LINE-1:0] cpu_read_data;

localparam IDLE = 1;
localparam ADDR2FIFO = 2;
localparam WAIT_DATA = 3;
localparam FIFO2REG1 = 4;
localparam DATA2REG = 5;
localparam REG1_AND_ADDR2FIFO = 6;
localparam S_ACK = 7;
localparam CLEAR_Q = 8;

reg empty_ram2cache = 0;
reg full_cache2ram = 0;

reg [3:0] state = IDLE;

wire empty_cache2cpu;
wire empty_cpu2cache;
wire full_cache2cpu;
wire full_cpu2cache;
reg cache2fifo_read;
reg cache2fifo_write;
reg cpu2fifo_write;
reg cpu2fifo_read;

wire [SYS_WIDTH + 4 + ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH + 1 + 1 - 1:0] fifo2cache_output;
reg [SYS_WIDTH + 4 + ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH + 1 + 1 - 1:0] fifo2cache_input ;

reg [SYS_WIDTH + 1 - 1:0] cache2fifo_input;
wire [SYS_WIDTH + 1 - 1:0] cache2fifo_output ;

reg processing_data = 0;

always @(*) begin
    if (en_from_cache == 1)
        cache2fifo_input <= {cache_Rdata, cache_Ack}; 
        if (cache_Ack)
            processing_data <= 1;
end


always @(*) begin
    if (en_cpu == 1)
        fifo2cache_input <= {WData, BVal, Addr, Rd, Wr};
end


always @(*) begin
    en_to_cache <= ~empty_cpu2cache && ~processing_data;
end


always @(*) begin
    {RData, Ack} <= cache2fifo_output;
end


cache_to_cpu_fifo #() cache_to_cpu_fifo_ins (
    .wr_clk(cache_clk),
    .wr_rst(reset),
    .rd_clk(cpu_clk),
    .rd_rst(cpu_reset),
    .din(cache2fifo_input),
    .wr_en(cache_Ack),
    .rd_en(cache2fifo_read),
    .dout(cache2fifo_output),
    .full(full_cache2cpu),
    .empty(empty_cache2cpu)
);


cpu_to_cache_fifo #() cpu_to_cache_fifo_inst (
    .wr_clk(cpu_clk),
    .wr_rst(cpu_reset),
    .rd_clk(cache_clk),
    .rd_rst(reset),
    .din(fifo2cache_input),
    .wr_en(cpu2fifo_write),
    .rd_en(cpu2fifo_read),
    .dout(fifo2cache_output),
    .full(full_cpu2cache),
    .empty(empty_cpu2cache)
);


always @(*) begin
	cache2fifo_read <= ~empty_cache2cpu;
end   


always @(*) begin
	cpu2fifo_read <= ~empty_cpu2cache;
end   


always @(posedge cache_clk) begin
        case (state)
            IDLE: begin
                    if (Wr)
                        state <= DATA2REG; 
                    else if (Rd)
                        state <= ADDR2FIFO; 
                    else state <= IDLE;
                end 
            ADDR2FIFO:
                state <= CLEAR_Q;
          
            CLEAR_Q:
                state <= WAIT_DATA;
            WAIT_DATA: begin
                if (~empty_cache2cpu)
                    state <= FIFO2REG1; 
                end 
            FIFO2REG1:
                state <= S_ACK;
            S_ACK: begin
                state <= IDLE;
                processing_data <= 0;
                end 
            DATA2REG: begin
                    if (~full_cpu2cache)
                        state <= REG1_AND_ADDR2FIFO; 
                    else if (~Wr && Rd)
                        state <= DATA2REG; 
                end 
            REG1_AND_ADDR2FIFO:
                state <= S_ACK;
          
            default: state <= IDLE;
       endcase
end  

	
always @(*) begin
    cache_WData <= fifo2cache_output[54 : 22];
end


always @(*) begin
    cache_Addr  <= fifo2cache_output[22 : 6];
end


always @(*) begin
    cache_BVal  <= fifo2cache_output[6 : 2];
end


always @(*) begin
    cache_Rd    <= fifo2cache_output[1];
end


always @(*) begin
    cache_Wr    <= fifo2cache_output[0];
end


always @(*) begin
	cpu2fifo_write <= (state == ADDR2FIFO || state == CLEAR_Q || state == WAIT_DATA) && empty_cpu2cache;
end

endmodule