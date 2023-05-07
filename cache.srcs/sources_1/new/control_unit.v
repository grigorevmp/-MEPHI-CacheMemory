`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2023 20:32:18
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input clk,
    input reset,
    input en,
    
    input wr_cpu,
    input rd_cpu,
    input hit,
    input lm,
    input ram_ack,
    
    output reg ack,
    output reg M,
    output reg wrT,
    output reg wr,
    output reg ram_rd,
    output reg ram_wr,
    output reg t_sel,
    output reg w_sel,
    output reg plru
);
    
reg [2:0] state;

localparam IDLE = 1;
localparam S_WR_HIT = 2;
localparam S_RD_HIT = 3;
localparam S_RAM_WR = 4;
localparam S_RAM_RD = 5;

//reg state;

always @(posedge clk) begin
    if(reset) begin
        state <= IDLE;
    end else begin
        if (state == IDLE) begin
            if (en && hit & wr_cpu)
                state <= S_WR_HIT; 
            else if (en && hit & rd_cpu)  
                state <= S_RD_HIT; 
            else if (en && ~hit & ~lm)   
                state <= S_RAM_RD;
            else if (en && ~hit & lm)
                state <= S_RAM_WR;
            else state <= IDLE;
        end else if (state == S_RAM_RD) begin
            if (ram_ack)   
                state <= IDLE;
            else state <= S_RAM_RD;
        end else if (state == S_RAM_WR) begin
            if (ram_ack)   
                state <= S_RAM_RD;
            else state <= S_RAM_WR;
        end else state <= IDLE;
    end 
end  

always @(*) begin
    case (state)
        IDLE:                     {ack, M, wrT, wr, w_sel, ram_rd, ram_wr, t_sel, plru} <= 
              9'b000000000; //    {0____0__0____0___0______0_______0_______0______0___};
        S_WR_HIT:                 {ack, M, wrT, wr, w_sel, ram_rd, ram_wr, t_sel, plru} <= 
              9'b110100001; //    {1____1__0____1___0______0_______0_______0______1___};
        S_RD_HIT:                 {ack, M, wrT, wr, w_sel, ram_rd, ram_wr, t_sel, plru} <= 
              9'b100000001; //    {1____0__0____0___0______0_______0_______0______1___};
        S_RAM_WR:                 {ack, M, wrT, wr, w_sel, ram_rd, ram_wr, t_sel, plru} <= 
              9'b000000110; //    {0____0__0____0___0______0_______1_______1______0___};
        S_RAM_RD:                 {ack, M, wrT, wr, w_sel, ram_rd, ram_wr, t_sel, plru} <= 
              9'b001111000; //    {0____0__1____1___1______1_______0_______0______0___};

    endcase
end

endmodule
