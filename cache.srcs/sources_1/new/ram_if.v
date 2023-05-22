`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2023 22:49:27
// Design Name: 
// Module Name: ram_if
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


module ram_if #(
  parameter CACHE_LINE = 128,
  parameter RAM_LINE = 16,
  parameter RAM_ADDR_WIDTH = 12
)(

    // RAM
    input ram_clk,
    input ram_reset,
    input en,
    
    // Cache    
    input cache_clk,
    input cache_reset,
    
    //Wdata
    input [CACHE_LINE-1:0] WData,
    //A(T,I)
    input [RAM_ADDR_WIDTH-1:0] Addr,
    //wr
    input wr,
    //rd
    input rd,
    //RAck
    input ram_ack,
    //RDATA
    input [RAM_LINE-1:0] RData_ram,
    
    //ack
    output reg ack,
    //Addr 12
    output reg [RAM_ADDR_WIDTH-1:0] Addr_ram,
    //Rdata 128
    output reg [CACHE_LINE-1:0] RData,
    //RnW
    output reg Rnw,
    //Wdata 16
    output reg [RAM_LINE-1:0] WData_ram,
    //Avalid
    output reg AValid,
    output state
);

    
// IDLE
// ADDR2FIFO
// WAIT ACK
// FIFO2REG (1 to 8)
reg [4:0] next_state;

reg switcher = 'b0;

reg fifo2cache_load = 0;
reg CACHE2FIFO_LOAD = 0;
reg CACHE2FIFO_SHIFT = 0;
reg [CACHE_LINE-1:0] SHIFT_REG_CACHE2FIFO = 0;
reg [CACHE_LINE-1:0] shift_reg_fifo2cache = 0;
wire [RAM_LINE-1:0] ram_read_data;

reg [RAM_LINE + RAM_ADDR_WIDTH + 2 - 1:0] cache2fifo_input;
wire [RAM_LINE + RAM_ADDR_WIDTH + 2 - 1:0] cache2fifo_output;

wire empty_cache2ram;
wire empty_ram2cache;
wire full_cache2ram;
wire full_ram2cache;

reg cache2fifo_read;
reg cache2fifo_write;
reg fifo2cache_read;


localparam IDLE = 1;
localparam ADDR2FIFO = 2;
localparam WAIT_ACK = 3;
localparam FIFO2REG1 = 4;
localparam FIFO2REG2 = 5;
localparam FIFO2REG3 = 6;
localparam FIFO2REG4 = 7;
localparam FIFO2REG5 = 8;
localparam FIFO2REG6 = 9;
localparam FIFO2REG7 = 10;
localparam FIFO2REG8 = 11;
localparam DATA2REG = 12;
localparam REG1TOFIFO = 13;
localparam REG2TOFIFO = 14;
localparam REG3TOFIFO = 15;
localparam REG4TOFIFO = 16;
localparam REG5TOFIFO = 17;
localparam REG6TOFIFO = 18;
localparam REG7TOFIFO = 19;
localparam REG8TOFIFO = 20;
localparam CLEAR_Q = 21;
localparam WAIT_DATA = 22;
localparam ACK_WR = 23;
localparam ACK_RD = 24;

reg empty_ram2cache = 0;
reg full_cache2ram = 0;

reg [4:0] state = IDLE;

//reg state;

always @(posedge cache_clk) begin
    if (CACHE2FIFO_LOAD) SHIFT_REG_CACHE2FIFO <= WData;
    else if (CACHE2FIFO_SHIFT) SHIFT_REG_CACHE2FIFO <= {SHIFT_REG_CACHE2FIFO[RAM_LINE - 1:0], SHIFT_REG_CACHE2FIFO[CACHE_LINE - 1:RAM_LINE]};
end


always @(posedge cache_clk) begin
    if (fifo2cache_load) 
        shift_reg_fifo2cache <= {ram_read_data, shift_reg_fifo2cache[CACHE_LINE - 1 : RAM_LINE]};
end

always @(*) begin
    RData <= shift_reg_fifo2cache;
end

always @(posedge cache_clk) begin
    if(cache_reset) begin
        state <= IDLE;
    end else begin
        case (state)
            IDLE: begin
                    if (en && wr)
                        state <= DATA2REG; 
                    else if (en && rd)
                        state <= ADDR2FIFO; 
                    else state <= IDLE;
                end 
            
            ADDR2FIFO: state <= CLEAR_Q;

            CLEAR_Q: state <= WAIT_DATA;
            
            WAIT_DATA: begin
                    if (~empty_ram2cache) state <= FIFO2REG1;
                    else state <= WAIT_DATA;
                end
            
            FIFO2REG1: begin
                    if (~empty_ram2cache) state <= FIFO2REG2;
                    else state <= FIFO2REG1;
                end
            
            FIFO2REG2: begin
                    if (~empty_ram2cache) state <= FIFO2REG3;
                    else state <= FIFO2REG2;
                end
            
            FIFO2REG3: begin
                    if (~empty_ram2cache) state <= FIFO2REG4;
                    else state <= FIFO2REG3;
                end
            
            FIFO2REG4: begin
                    if (~empty_ram2cache) state <= FIFO2REG5;
                    else state <= FIFO2REG4;
                end
            
            FIFO2REG5: begin
                    if (~empty_ram2cache) state <= FIFO2REG6;
                    else state <= FIFO2REG5;
                end
            
            FIFO2REG6: begin
                    if (~empty_ram2cache) state <= FIFO2REG7;
                    else state <= FIFO2REG6;
                end
            
            FIFO2REG7: begin
                    if (~empty_ram2cache) state <= FIFO2REG8;
                    else state <= FIFO2REG7;
                end
            
            FIFO2REG8: state <= ACK_RD;
            
            ACK_RD: begin
                    state <= IDLE;
                end
            
            DATA2REG: begin
                    if (~full_cache2ram) state <= REG1TOFIFO;
                    else state <= DATA2REG;
                end
            
            REG1TOFIFO: begin
                    if (~full_cache2ram) state <= REG2TOFIFO;
                    else state <= REG1TOFIFO;
                end
            
            REG2TOFIFO: begin
                    if (~full_cache2ram) state <= REG3TOFIFO;
                    else state <= REG2TOFIFO;
                end
            
            REG3TOFIFO: begin
                    if (~full_cache2ram) state <= REG4TOFIFO;
                    else state <= REG3TOFIFO;
                end
            
            REG4TOFIFO: begin
                    if (~full_cache2ram) state <= REG5TOFIFO;
                    else state <= REG4TOFIFO;
                end
            
            REG5TOFIFO: begin
                    if (~full_cache2ram) state <= REG6TOFIFO;
                    else state <= REG5TOFIFO;
                end
            
            REG6TOFIFO: begin
                    if (~full_cache2ram) state <= REG7TOFIFO;
                    else state <= REG6TOFIFO;
                end
            
            REG7TOFIFO: begin
                    if (~full_cache2ram) state <= REG8TOFIFO;
                    else state <= REG7TOFIFO;
                end
            
            REG8TOFIFO: begin
                    state <= ACK_WR;
                end
            
            ACK_WR: begin
                    state <= IDLE;
                end
          
            default: state <= IDLE;
       endcase
   end
end  

reg rnw_cache;
reg AValid_cache;

always @(*) begin
    case (state)
        IDLE: begin
            rnw_cache <= rd & ~wr;
            AValid_cache <= rd | wr;
        end
        REG2TOFIFO: begin
            rnw_cache <= 0;
            AValid_cache <= 0;
        end
        CLEAR_Q: begin
            rnw_cache <= 0;
            AValid_cache <= 0;
        end
    endcase
end

//always @(posedge cache_clk) begin
//    state <= state;
//end

//always @(state) begin
//    switcher <= ~switcher;
//end

always @(*) begin
	cache2fifo_input <= {Addr, SHIFT_REG_CACHE2FIFO[RAM_LINE - 1:0], rnw_cache, AValid_cache};
end


always @(*) begin
	CACHE2FIFO_LOAD <= state == DATA2REG;
end


always @(*) begin
	CACHE2FIFO_SHIFT <= ((state == REG1TOFIFO || 
        state == REG2TOFIFO ||
        state == REG3TOFIFO ||
        state == REG4TOFIFO ||
        state == REG5TOFIFO ||
        state == REG6TOFIFO ||
        state == REG7TOFIFO) && ~full_cache2ram) ;
end


always @(*) begin
	fifo2cache_read <= ((state == WAIT_DATA  || 
        state == FIFO2REG1  ||
        state == FIFO2REG2  ||
        state == FIFO2REG3  ||
        state == FIFO2REG4  ||
        state == FIFO2REG5  ||
        state == FIFO2REG6 ||
        state == FIFO2REG7) && ~empty_ram2cache) ;
end


always @(*) begin
	cache2fifo_write <= (CACHE2FIFO_SHIFT ||  
            state == ADDR2FIFO || 
            state == CLEAR_Q || 
            state == REG8TOFIFO ) ;
end


always @(*) begin
	fifo2cache_load <=  (state == FIFO2REG8) || (~empty_ram2cache && (
            state == FIFO2REG1 || 
            state == FIFO2REG2 || 
            state == FIFO2REG3 ||
            state == FIFO2REG4 ||
            state == FIFO2REG5 ||
            state == FIFO2REG6 ||
            state == FIFO2REG7 
   )) ;
end       


always @(*) begin
	ack <= (state == ACK_RD || state == ACK_WR);
end        


always @(*) begin
	cache2fifo_read <= ~empty_cache2ram;
end   


fifo_generator_0 #() cache_to_ram_fifo_inst (
    .wr_clk(cache_clk),
    .wr_rst(cache_reset),
    .rd_clk(ram_clk),
    .rd_rst(ram_reset),
    .din(cache2fifo_input),
    .wr_en(cache2fifo_write),
    .rd_en(cache2fifo_read),
    .dout(cache2fifo_output),
    .full(full_cache2ram),
    .empty(empty_cache2ram)
);
      


always @(*) begin
	Addr_ram <= cache2fifo_output[RAM_LINE + RAM_ADDR_WIDTH + 2 - 1 : RAM_LINE + 2];
	WData_ram <= cache2fifo_output[RAM_LINE + 2 - 1  : 2];
	Rnw <= cache2fifo_output[1];
	AValid <= cache2fifo_output[0];
end 
    
fifo_generator_1 #() ram_to_cache_fifo_inst (
    .wr_clk(ram_clk),
    .wr_rst(ram_reset),
    .rd_clk(cache_clk),
    .rd_rst(cache_reset),
    .din(RData_ram),
    .wr_en(ram_ack),
    .rd_en(fifo2cache_read),
    .dout(ram_read_data),
    .full(full_ram2cache),
    .empty(empty_ram2cache)
);


endmodule
