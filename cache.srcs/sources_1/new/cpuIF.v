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

reg [CACHE_LINE-1:0] REG_CACHE2FIFO = 0;
reg CACHE2FIFO_LOAD = 0;

reg [RAM_LINE-1:0] cpu_read_data = 0;

localparam IDLE = 1;
localparam WAIT_INPUT = 2;
localparam READING_DATA = 3;

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
reg [SYS_WIDTH + 4 + ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH + 1 + 1 - 1:0] fifo2cache_input;

reg [SYS_WIDTH + 1 - 1:0] cache2fifo_input;
wire [SYS_WIDTH + 1 - 1:0] cache2fifo_output;

reg processing_data = 0;
reg frozen = 1;


reg cpu = 0;
reg cache = 0;


always @(posedge cpu_clk) begin
    if (Wr == 1 || Rd == 1) begin
        fifo2cache_input <= {WData, Addr, BVal, Rd, Wr};
        cpu = 1;
    end
end


always @(posedge cache_clk) begin
    if (cpu == 1) begin
        cache_WData <= fifo2cache_input[53 : 22];
        cache_Addr  <= fifo2cache_input[21 : 6];
        cache_BVal  <= fifo2cache_input[5 : 2];
        cache_Rd    <= fifo2cache_input[1];
        cache_Wr    <= fifo2cache_input[0];
        en_to_cache    <= 1;
        cpu = 0;
    end else if(en_to_cache && cache_Ack==1) begin
            cache_Rd    <= 0;
            cache_Wr    <= 0;
            en_to_cache    <= 0;
    end else if (reset) begin
        cache_WData <= 0;
        cache_Addr  <= 0;
        cache_BVal  <= 0;
        cache_Rd    <= 0;
        cache_Wr    <= 0;
        en_to_cache <= 0;
        cpu = 0;
    
//    end else if(en_to_cache && (cache_Rd || cache_Wr)) begin
//            cache_Rd    <= 0;
//            cache_Wr    <= 0;
//    end else 
//        en_to_cache    <= 1; // Always 1, remove that
    end
end


always @(posedge cache_clk) begin
    if (cache_Ack) begin
        cache2fifo_input <= {cache_Rdata, cache_Ack}; 
        cache = 1;
    end
end


always @(posedge cpu_clk) begin
    if (cache) begin
        RData <= cache2fifo_input[SYS_WIDTH+1-1:1];
        Ack   <= cache2fifo_input[0];
        cache = 0;
    end else if (reset) begin
        RData <= 0;
        Ack <= 0;
    end else
        Ack <= 0;
end


// OLD 


//always @(*) begin
//    if (en_from_cache == 1)
//        cache2fifo_input <= {cache_Rdata, cache_Ack}; 
//end


//always @(*) begin
//    if (en_cpu == 1)
//        fifo2cache_input <= {WData, Addr, BVal, Rd, Wr};
//end

//always @(*) begin
//    RData <= cache2fifo_output[SYS_WIDTH+1-1:1];
//    Ack <= ~frozen && cache2fifo_output[0];
//end

//always @(posedge cache_clk) begin
//    if (Ack) 
//     frozen <= 1;
//    if (cache_Ack) 
//     frozen <= 0;
//end


//cache_to_cpu_fifo #() cache_to_cpu_fifo_ins (
//    .wr_clk(cache_clk),
//    .wr_rst(reset),
//    .rd_clk(cpu_clk),
//    .rd_rst(cpu_reset),
//    .din(cache2fifo_input),
//    .wr_en(cache_Ack),
//    .rd_en(cache2fifo_read),
//    .dout(cache2fifo_output),
//    .full(full_cache2cpu),
//    .empty(empty_cache2cpu)
//);


//cpu_to_cache_fifo #() cpu_to_cache_fifo_inst (
//    .wr_clk(cpu_clk),
//    .wr_rst(cpu_reset),
//    .rd_clk(cache_clk),
//    .rd_rst(reset),
//    .din(fifo2cache_input),
//    .wr_en(cpu2fifo_write),
//    .rd_en(cpu2fifo_read),
//    .dout(fifo2cache_output),
//    .full(full_cpu2cache),
//    .empty(empty_cpu2cache)
//);


//always @(*) begin
//	cpu2fifo_read <= ~empty_cpu2cache;
//end   


//reg was_enabled = 0;

//always @(*) begin
//    en_to_cache <= ~empty_cpu2cache && (state == WAIT_INPUT || state == READING_DATA) && ~was_enabled;
    
//end

//always @(negedge en_to_cache) begin
//        was_enabled = 1;
//end


//always @(*) begin
//	cpu2fifo_write <= (state == WAIT_INPUT || state == READING_DATA) && empty_cpu2cache;
//end


//always @(*) begin
//	cache2fifo_read <= ~empty_cache2cpu;
//end   


//always @(posedge cache_clk) begin
//    if(reset) begin
//        state <= IDLE;
//    end else begin
//        case (state)
//            IDLE: begin
//                    if (Wr == 1 || Rd == 1 || en_from_cache == 1)
//                        state <= WAIT_INPUT; 
//                    else state <= IDLE;
//                    was_enabled <= 0;
//                end 
//            WAIT_INPUT: begin
//                if (~empty_cpu2cache)
//                    state <= READING_DATA; 
//                end 
//            READING_DATA: begin
//                    state <= IDLE; 
//            end             
//       endcase
//   end
//end  

	
//always @(*) begin
//    cache_WData <= fifo2cache_output[53 : 22];
//end


//always @(*) begin
//    cache_Addr  <= fifo2cache_output[21 : 6];
//end


//always @(*) begin
//    cache_BVal  <= fifo2cache_output[5 : 2];
//end


//always @(*) begin
//    cache_Rd    <= fifo2cache_output[1];
//end


//always @(*) begin
//    cache_Wr    <= fifo2cache_output[0];
//end

endmodule