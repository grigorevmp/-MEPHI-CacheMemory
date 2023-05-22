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


module TB_2_4_CACHE(); 
    localparam ATEG_WIDTH = 8;
    localparam AINDEX_WIDTH = 4;
    localparam AOFFSET_WIDTH = 4;
    localparam CHANNEL_WIDTH = 2;
    localparam W_DATA_WIDTH = 128;
    localparam SYS_WIDTH = 32;
    localparam CACHE_LINE = 128;
    localparam RAM_LINE = 16;
    localparam RAM_ADDR_WIDTH = 12;
    
    reg cache_clk = 'b0;
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
        .cache_clk(cache_clk), 
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
    
    always #3 ram_clk <= ~ram_clk;
    always #10 cache_clk <= ~cache_clk; 
    always #32 cpu_clk <= ~cpu_clk;
    
        
    integer i;

    initial #30 begin
    
        // RESET 
        
        reset = 1;
        ram_reset = 1;
        cpu_reset = 1;
        
        @(negedge ram_clk);
        @(negedge cpu_clk);
            
        reset = 0;
        ram_reset = 0;
        cpu_reset = 0;
        
        for(i=0; i<2; i=i+1)
            @(negedge ram_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE WRITE 1 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b00110011_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        WData = 10;
        Ram_Data = 0;
        bval = 4'b1111;
        ram_ack = 0;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 'b0;
        bval = 0;
        rd_cpu = 0;
        wr_cpu = 0;   
        

        @(negedge ram_clk);
            Ram_Data = 32;
            ram_ack = 1;
        
        @(negedge ram_clk);
            Ram_Data = 0;
            
        for(i=0; i<7; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (ack == 0)
            @(negedge cpu_clk);
            
            
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE WRITE 2 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b00110001_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        ram_ack = 0;
        WData = 11;
        bval = 4'b1111;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 0;
        bval = 'b0;
        rd_cpu = 0;
        wr_cpu = 0;   

        @(negedge ram_clk);
            Ram_Data = 33;
            ram_ack = 1;
        
        @(negedge ram_clk);
            Ram_Data = 0;
            
        for(i=0; i<7; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (ack == 0)
            @(negedge cpu_clk);
            
            
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE WRITE 3 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b00110101_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        
        WData = 12;
        bval = 4'b1111;
        ram_ack = 0;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 'b0;
        bval = 'b0;
        rd_cpu = 0;
        wr_cpu = 0;   
        
        

        @(negedge ram_clk);
            Ram_Data = 34;
            ram_ack = 1;
        
        @(negedge ram_clk);
            Ram_Data = 0;
            
        for(i=0; i<7; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (ack == 0)
            @(negedge cpu_clk);
            
            
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE WRITE 4 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b10110011_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        
        WData = 13;
        bval = 4'b1111;
        ram_ack = 0;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 'b0;
        bval = 'b0;
        rd_cpu = 0;
        wr_cpu = 0;   
        
        @(negedge ram_clk);
            Ram_Data = 35;
            ram_ack = 1;
        
        @(negedge ram_clk);
            Ram_Data = 0;
            
        for(i=0; i<7; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (ack == 0)
            @(negedge cpu_clk);
            
            
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE READ 5 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b00110011_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        
        WData = 14;
        bval = 'b1111;
        ram_ack = 0;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 'b0;
        bval = 'b0;
        rd_cpu = 0;
        wr_cpu = 0;   
        
        while (ack == 0)
            @(negedge cpu_clk);
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE READ 6 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b01111111_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        
        WData = 14;
        bval = 'b1111;
        ram_ack = 0;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 'b0;
        bval = 'b0;
        rd_cpu = 0;
        wr_cpu = 0;   

        @(negedge ram_clk);
            Ram_Data = 42;
            ram_ack = 1;
        
        @(negedge ram_clk);
            Ram_Data = 0;
            
        for(i=0; i<7; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (ack == 0)
            @(negedge cpu_clk);
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        ///////////////////////////////
        ///////////////////////////////
        ////// TEST CASE READ 7 //////
        ///////////////////////////////
        ///////////////////////////////
        
        @(negedge cpu_clk);
        
        addr = 16'b01111111_0011_0000;
        wr_cpu = 0;
        rd_cpu = 1;
        
        WData = 14;
        bval = 'b1111;
        ram_ack = 0;
        en_cpu = 1;
        
        @(negedge cpu_clk);
        
        en_cpu = 0;
        addr = 16'b0;
        WData = 'b0;
        bval = 'b0;
        rd_cpu = 0;
        wr_cpu = 0;   

        @(negedge ram_clk);
            Ram_Data = 42;
            ram_ack = 1;
        
        @(negedge ram_clk);
            Ram_Data = 0;
            
        for(i=0; i<7; i=i+1)
            @(negedge ram_clk);
        ram_ack = 0;
        
        while (ack == 0)
            @(negedge cpu_clk);
        
        for(i=0; i<10; i=i+1)
            @(negedge cache_clk);
        
        $finish;
    end 
  
endmodule