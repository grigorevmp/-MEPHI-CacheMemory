`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2023 21:06:08
// Design Name: 
// Module Name: TB_cache
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

module TB_cache();
    localparam ATEG_WIDTH = 8;
    localparam AINDEX_WIDTH = 4;
    localparam AOFFSET_WIDTH = 4;
    localparam CHANNEL_WIDTH = 2;
    localparam W_DATA_WIDTH = 128;
    localparam SYS_WIDTH = 32;
    localparam CACHE_LINE = 128;
    localparam RAM_LINE = 16;
    localparam RAM_ADDR_WIDTH = 12;
    
    reg clk = 'b0;
    reg reset = 'b1;
    
    reg ram_clk = 'b0;
    reg cpu_clk = 'b0;
    reg ram_reset = 'b1;
    
    reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr = 16'b00001111_0000_0000;
    
    reg [SYS_WIDTH-1:0] WData;
    reg [RAM_LINE-1:0] Ram_Data;
    wire [SYS_WIDTH-1:0] CPU_RData;
    
    wire [4:0] state;
    
    reg wr_cpu = 'b0;
    reg rd_cpu = 'b0;
    reg ram_ack = 'b0;
    
    reg [3:0] bval;
    
    wire t_sel;
    wire w_sel;
    wire ack;
    wire Rnw;
    reg ce = 1'b1;
   
    wire [RAM_ADDR_WIDTH-1:0] Addr_ram;
    
    wire [RAM_LINE-1:0] WData_ram;
    wire AValid;
    
    cache #(
        .ATEG_WIDTH(ATEG_WIDTH),
        .AINDEX_WIDTH(AINDEX_WIDTH),
        .CHANNEL_WIDTH(CHANNEL_WIDTH)
    ) ca (
        ce,
        clk, 
        reset, 
        
        ram_clk, 
        cpu_clk, 
        ram_reset, 
        
        wr_cpu,
        rd_cpu,
        ram_ack,  
        addr,          
        WData,    
        Ram_Data,     
        bval,          
        
        // OUTPUT
        
        w_sel,
             
        ack,
        t_sel,
        
        Addr_ram,
        Rnw,
        WData_ram,
        CPU_RData,
        AValid,
        state

    );
    
    always #10 clk <= ~clk; 
    always #20 ram_clk <= ~ram_clk;
    always #20 cpu_clk <= ~cpu_clk;
    

    initial #30 begin
    
        /////////////////////////
        /////////////////////////
        ///////// RESET /////////
        /////////////////////////
        /////////////////////////
        
        reset = 1;
        ram_reset = 1;
        ce = 0;
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        ce = 1;
        reset = 0;
        ram_reset = 0;
        
        /////////////////////////
        /////////////////////////
        ////// TEST CASE 1 //////
        /////////////////////////
        /////////////////////////
        
        // STATE: IDLE
        addr = 16'b00110011_0011_0000;
        wr_cpu = 1;
        
        WData = 3;
        Ram_Data = 32;
        bval = 0;

        ram_ack = 1;
        
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        // STATE: HIT RD
        // -> plru 
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        ram_ack = 0;
        rd_cpu = 0;
        wr_cpu = 0;
        
        // STATE: IDLE
        
        /////////////////////////
        /////////////////////////
        ////// TEST CASE 2 //////
        /////////////////////////
        /////////////////////////
        rd_cpu = 1;
        
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
         /////////////////////////
        /////////////////////////
        ////// TEST CASE 3 //////
        /////////////////////////
        /////////////////////////
        
        // STATE: IDLE
        addr = 16'b00110111_0011_0000;
        wr_cpu = 1;
        
        WData = 3;
        Ram_Data = 11;
        bval = 0;

        ram_ack = 1;
        
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        // STATE: HIT RD
        // -> plru 
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        ram_ack = 0;
        rd_cpu = 0;
        wr_cpu = 0;
        
         /////////////////////////
        /////////////////////////
        ////// TEST CASE 4 //////
        /////////////////////////
        /////////////////////////
        
        // STATE: IDLE
        addr = 16'b00110110_0011_0000;
        wr_cpu = 1;
        
        WData = 3;
        Ram_Data = 12;
        bval = 0;

        ram_ack = 1;
        
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        // STATE: HIT RD
        // -> plru 
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        ram_ack = 0;
        rd_cpu = 0;
        wr_cpu = 0;
        
         /////////////////////////
        /////////////////////////
        ////// TEST CASE 5 //////
        /////////////////////////
        /////////////////////////
        
        // STATE: IDLE
        addr = 16'b00111110_0011_0000;
        wr_cpu = 1;
        
        WData = 3;
        Ram_Data = 13;
        bval = 0;

        ram_ack = 1;
        
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        // STATE: RAM RD
        // -> wrT
        // -> wr
        // Ack ->
        @(posedge clk);
        
        // STATE: IDLE
        // Hit ->
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        // STATE: HIT RD
        // -> plru 
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        ram_ack = 0;
        rd_cpu = 0;
        wr_cpu = 0;
        
        
//        // STATE: IDLE
//        addr = 16'b00110000_0010_0000;
//        wr_cpu = 1; 
        
//        WData = 4;
//        Ram_Data = 4;
//        bval = 0;
//        // 力: ! hit
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // ... waiting for ack ... 
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // -> wrT
//        // -> wr
//        // Ack ->
//        ram_ack = 1;
//        @(posedge clk);
        
//        // STATE: IDLE
//        // Hit ->
//        @(posedge clk);
        
//        // STATE: HIT RD
//        // -> plru 
       
//        @(posedge clk);
        
//        wr_cpu = 0;
//        ram_ack = 0;
        
//        ////////////////////////// TEST BLOCK 3 //////////////
        
//        // STATE: IDLE
//        addr = 16'b00110001_0010_0000;
//        wr_cpu = 1;
        
//        WData = 5;
//        Ram_Data = 5;
//        bval = 0;
//        // 力: ! hit
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // ... waiting for ack ... 
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // -> wrT
//        // -> wr
//        // Ack ->
//        ram_ack = 1;
//        @(posedge clk);
        
//        // STATE: IDLE
//        // Hit ->
//        @(posedge clk);
        
//        // STATE: HIT RD
//        // -> plru 
       
//        @(posedge clk);
        
//        wr_cpu = 0;
//        ram_ack = 0;
        
//        ////////////////////////// TEST BLOCK 4 //////////////
        
//        // STATE: IDLE
//        addr = 16'b00110010_0010_0000;
//        wr_cpu = 1;
        
//        WData = 3;
//        Ram_Data = 3;
//        bval = 2;
//        // 力: ! hit
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // ... waiting for ack ... 
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // -> wrT
//        // -> wr
//        // Ack ->
//        ram_ack = 1;
//        @(posedge clk);
        
//        // STATE: IDLE
//        // Hit ->
//        @(posedge clk);
        
//        // STATE: HIT RD
//        // -> plru 
       
//        @(posedge clk);
        
//        wr_cpu = 0;
//        ram_ack = 0;
        
//        ////////////////////////// TEST BLOCK 5 //////////////
        
//        // STATE: IDLE
//        addr = 16'b00111010_0010_0000;
//        wr_cpu = 1;
        
//        WData = 12;
//        Ram_Data = 12;
//        bval = 1;
//        // 力: ! hit
//        @(posedge clk);
        
//        // STATE: RAM WR
//        // ... waiting for ack ... 
//        @(posedge clk);
        
//        // STATE: RAM WR
//        // -> wrT
//        // -> wr
//        // Ack ->
//        ram_ack = 1;
//        @(posedge clk);
        
//        // STATE: RAM RD
//        // -> wrT
//        // -> wr
//        // Ack ->
//        ram_ack = 1;
//        @(posedge clk);
        
//        // STATE: IDLE
//        // Hit ->
//        @(posedge clk);
        
//        // STATE: HIT RD
//        // -> plru 
       
//        @(posedge clk);
        
//        wr_cpu = 0;
//        ram_ack = 0;
        
//        ////////////////////////// REEEEEEEEEEEEEEEEEEEEE TEST BLOCK 1 //////////////
        
//        // STATE: IDLE
//        addr = 16'b00111010_0010_0000;
//        rd_cpu = 1;
        
        
//        WData = 'bx;
//        Ram_Data = 'bx;
//        // WData = 12;
//        // Ram_Data = 12;
//        bval = 0;
//        // 力: ! hit
//        @(posedge clk);
        
//        // STATE: HIT RD
//        // ... waiting for ack ... 
//        @(posedge clk);
        
//        // IDLE
//        // -> plru 
//        @(posedge clk);
        
//        // STATE: IDLE
        
        $finish;
    end 
  
endmodule