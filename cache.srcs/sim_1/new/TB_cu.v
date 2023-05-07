`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2023 22:00:10
// Design Name: 
// Module Name: TB_cu
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


module TB_cu();
    localparam ATEG_WIDTH = 8;
    localparam AINDEX_WIDTH = 4;
    localparam CHANNEL_WIDTH = 2;
    
    reg clk = 'b0;
    wire plru;
    wire plru_o;
    reg reset = 'b1;
    reg [ATEG_WIDTH + AINDEX_WIDTH - 1:0] addr = 12'b00001111_0000;
    wire wr;
    wire wr_o;
    wire md;
    wire md_o;
    
    wire lm;
    
    wire [ATEG_WIDTH + 2 - 1:0] tegOut;
    wire [CHANNEL_WIDTH - 1:0] chan;
    wire hit;
    
    reg wr_cpu = 'b0;
    reg rd_cpu = 'b0;
    reg ram_ack = 'b0;
    
    wire t_sel;
    wire w_sel;
    wire ack;
    
    
    wire [2:0] state; //TODO REMOVE
    
    tegMem #(
        .ATEG_WIDTH(ATEG_WIDTH),
        .AINDEX_WIDTH(AINDEX_WIDTH),
        .CHANNEL_WIDTH(CHANNEL_WIDTH)
    ) m (
        clk, 
        reset, 
        plru,
        addr, 
        wr, 
        md_o, 
        
        tegOut, 
        chan, 
        hit
    );
    
    control_unit #() cu (
        clk,
        reset,
        
        wr_cpu,
        rd_cpu,
        hit,
        lm,
        ram_ack,
        
        ack,
        md_o,
        wrT,
        wr_o,
        ram_rd,
        ram_wr,
        t_sel,
        w_sel,
        plru_o
    );
    
    always #10 clk <= ~clk;
    
    assign md = md_o;
    assign wr = wrT;
    assign plru = plru_o;
    assign lm = tegOut[0];

    initial #30 begin
        // STATE: XXX
        reset = 1;
        @(posedge clk);
        
        reset = 0;
        
        ////////////////////////// TEST BLOCK 1 //////////////
        
        // STATE: IDLE
        addr = 12'b00110011_0011;
        rd_cpu = 1;
        // 力: ! hit
        @(posedge clk);
        
        // STATE: RAM RD
        // ... waiting for ack ... 
        @(posedge clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        ram_ack = 1;
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        
        // STATE: HIT RD
        // -> plru 
        @(posedge clk);
        
        ram_ack = 0;
        rd_cpu = 0;
        
        // STATE: IDLE
        
        ////////////////////////// TEST BLOCK 2 //////////////
        
        // STATE: IDLE
        addr = 12'b00110000_0010;
        wr_cpu = 1;
        // 力: ! hit
        @(posedge clk);
        
        // STATE: RAM RD
        // ... waiting for ack ... 
        @(posedge clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        ram_ack = 1;
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        
        // STATE: HIT RD
        // -> plru 
       
        @(posedge clk);
        
        wr_cpu = 0;
        ram_ack = 0;
        
        ////////////////////////// TEST BLOCK 3 //////////////
        
        // STATE: IDLE
        addr = 12'b00110001_0010;
        wr_cpu = 1;
        // 力: ! hit
        @(posedge clk);
        
        // STATE: RAM RD
        // ... waiting for ack ... 
        @(posedge clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        ram_ack = 1;
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        
        // STATE: HIT RD
        // -> plru 
       
        @(posedge clk);
        
        wr_cpu = 0;
        ram_ack = 0;
        
        ////////////////////////// TEST BLOCK 4 //////////////
        
        // STATE: IDLE
        addr = 12'b00110010_0010;
        wr_cpu = 1;
        // 力: ! hit
        @(posedge clk);
        
        // STATE: RAM RD
        // ... waiting for ack ... 
        @(posedge clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        ram_ack = 1;
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        
        // STATE: HIT RD
        // -> plru 
       
        @(posedge clk);
        
        wr_cpu = 0;
        ram_ack = 0;
        
        ////////////////////////// TEST BLOCK 4 //////////////
        
        // STATE: IDLE
        addr = 12'b00111010_0010;
        wr_cpu = 1;
        // 力: ! hit
        @(posedge clk);
        
        // STATE: RAM WR
        // ... waiting for ack ... 
        @(posedge clk);
        
        // STATE: RAM WR
        // -> wrT
        // -> wr
        // Ack ->
        ram_ack = 1;
        @(posedge clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        ram_ack = 1;
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        
        // STATE: HIT RD
        // -> plru 
       
        @(posedge clk);
        
        wr_cpu = 0;
        ram_ack = 0;
        
        $finish;
    end 
  
endmodule