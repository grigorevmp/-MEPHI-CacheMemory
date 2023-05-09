`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2023 11:24:52
// Design Name: 
// Module Name: TB_2_3_CACHE
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


module TB_2_3_CACHE();
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
    reg cpu_reset = 'b1;
    
    reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr = 16'b00001111_0000_0000;
    
    reg [SYS_WIDTH-1:0] WData;
    reg [RAM_LINE-1:0] Ram_Data;
    wire [SYS_WIDTH-1:0] CPU_RData;
    
    wire [4:0] state;
    
    reg wr_cpu = 'b0;
    reg rd_cpu = 'b0;
    reg ram_ack = 'b0;
    
    reg [3:0] bval;
    reg en_cpu;
    
    wire t_sel;
    wire w_sel;
    wire ack;
    wire Rnw;
    wire en_to_cache;
   
    wire [RAM_ADDR_WIDTH-1:0] Addr_ram;
    
    wire [RAM_LINE-1:0] WData_ram;
    wire AValid;
    
    cache #(
        .ATEG_WIDTH(ATEG_WIDTH),
        .AINDEX_WIDTH(AINDEX_WIDTH),
        .CHANNEL_WIDTH(CHANNEL_WIDTH)
    ) ca (
        .clk(clk), 
        .reset(reset), 
        .en_cpu(en_cpu),
        .ram_clk(ram_clk), 
        .cpu_clk(cpu_clk), 
        .cpu_reset(cpu_reset), 
        .ram_reset(ram_reset), 
        .wr_cpu_cpu(wr_cpu),
        .rd_cpu_cpu(rd_cpu),
        .ram_if_ack(ram_ack),  
        .addr_cpu(addr),          
        .WData_cpu(WData),    
        .Ram_Data(Ram_Data),     
        .bval_cpu(bval),          
        
        // OUTPUT
        
        .w_sel(w_sel),
        .ack(ack),
        .t_sel(t_sel),
        .Addr_ram(Addr_ram),
        .Rnw(Rnw),
        .WData_ram(WData_ram),
        .CPU_RDATA(CPU_RData),
        .AValid(AValid),
        .state_ram(state)

    );
    
    always #10 clk <= ~clk; 
    always #20 ram_clk <= ~ram_clk;
    always #20 cpu_clk <= ~cpu_clk;
    

    initial #30 begin
    
        // RESET 
        
        reset = 1;
        ram_reset = 1;
        cpu_reset = 1;
        
        @(negedge clk);
        
        reset = 0;
        ram_reset = 0;
        cpu_reset = 0;
        
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
        en_cpu = 1;
        
        @(negedge clk);
        
        en_cpu = 0;
        addr = 16'bx;
        WData = 'bx;
        Ram_Data = 32;
        bval = 'bx;
        ram_ack = 1;
        rd_cpu = 0;
        wr_cpu = 0;
        
        @(negedge cpu_clk);
        @(negedge cpu_clk);
        @(negedge cpu_clk);
        @(negedge cpu_clk);
        @(negedge clk);
        @(negedge cpu_clk);
        
        @(negedge clk);
        @(negedge cpu_clk);
        @(negedge clk);
        @(negedge cpu_clk);
        @(negedge clk);
        @(negedge cpu_clk);
        @(negedge clk);
        
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        
        ram_ack = 0;
        rd_cpu = 0;
        wr_cpu = 0;
        
        $finish;
    end 
  
endmodule
