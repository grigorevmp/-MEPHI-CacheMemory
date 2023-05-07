`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 23:21:11
// Design Name: 
// Module Name: TB_2_1_CACHE
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


module TB_2_2_CACHE();
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
    
        // RESET 
        
        reset = 1;
        ram_reset = 1;
        ce = 0;
        
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        reset = 0;
        ram_reset = 0;
        
        /////////////////////////
        /////////////////////////
        ////// TEST CASE 1 //////
        /////////////////////////
        /////////////////////////
        
        
        addr = 16'b00110011_0011_0000;
        rd_cpu = 1;
        
        WData = 3;
        Ram_Data = 32;
        bval = 0;

        ram_ack = 1;
        
        @(posedge clk);
        rd_cpu = 0;
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        
        ce = 1;
        
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
        @(posedge clk);
        @(posedge clk)
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge ram_clk);
        @(posedge cpu_clk);
        @(posedge clk);
        @(posedge clk);
        rd_cpu = 1;
        @(posedge clk);
        rd_cpu = 0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
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
        
        $finish;
    end 
  
endmodule
