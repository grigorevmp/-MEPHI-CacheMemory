`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2023 22:37:11
// Design Name: 
// Module Name: tb_cache_AUTO_1
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


module TB_2A_1_CACHE();

    localparam ATEG_WIDTH = 9;
    localparam AINDEX_WIDTH = 4;
    localparam AOFFSET_WIDTH = 3;
    localparam CHANNEL_WIDTH = 3;
    localparam SYS_WIDTH = 32;
    localparam W_DATA_WIDTH = 64;
    localparam CACHE_LINE = 64;
    localparam RAM_LINE = 8;
    localparam RAM_ADDR_WIDTH = 13;
    
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
        
    reg wr_cpu = 'b0;
    reg rd_cpu = 'b0;
    reg ram_ack = 'b0;
    
    reg [3:0] bval;
    reg en_cpu;
    
    wire t_sel;
    wire w_sel;
    wire ack;
    wire Rnw;
   
    wire [RAM_ADDR_WIDTH-1:0] Addr_ram;
    
    wire [RAM_LINE-1:0] WData_ram;
    wire AValid;
    wire [4:0] state;

    
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

    always #49 ram_clk <= ~ram_clk;
    always #16 cache_clk <= ~cache_clk;
    always #5 cpu_clk <= ~cpu_clk;
    
    reg [RAM_LINE - 1:0] data_urandom;
    reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr_urandom;
    reg [CACHE_LINE - 1:0] Full_read_line;
    reg [SYS_WIDTH-1:0] real_data;
    
    integer i;
    integer j;
    integer test_mem_size;
    integer test_mem_factor;
    integer full_size;
    
    initial #30 begin 
       // RESET
        reset = 1;
        ram_reset = 1;
        cpu_reset = 1;
        
        @(negedge cache_clk);
        reset = 0;
        ram_reset = 0;
        cpu_reset = 0;
        
        for (i=0; i<10; i=i+1)
            @(negedge cache_clk);
        // MAX
        test_mem_size = 32 * 1024;
        // STEP
        test_mem_factor = 8; 
        // ITERS
        full_size = test_mem_size / test_mem_factor + 10;
        
        
        $display("Tests started");
     
        for(j=0; j<full_size; j=j+1) begin
                
            $display("Iteration, %d", j + 1);
            @(posedge cpu_clk);
            addr_urandom = $random;
            data_urandom = $random;
            addr = addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0];
            $display("Addr: %b", addr);
            wr_cpu = addr_urandom[0];
            rd_cpu = ~wr_cpu;
            if (addr_urandom[0])
                $display("WRITE");
            else
                $display("READ");
            WData = 3;
            Ram_Data = 0;
            bval = 0;
            ram_ack = 0;
            en_cpu = 1;
            
            @(negedge cpu_clk);
            
            en_cpu = 0;
            addr = 16'b0;
            WData = 'b0;
            bval = 'b0;
            rd_cpu = 0;
            wr_cpu = 0;   
            while (Rnw == 0 && ack == 0)
                @(negedge cpu_clk);
            if (Rnw) begin
                @(negedge ram_clk);
                    Ram_Data = data_urandom[RAM_LINE - 1:0];
                    $display("RData: %d", Ram_Data);
                    ram_ack = 1;
                    
                for(i=0; i<8; i=i+1)
                    @(negedge ram_clk);
                ram_ack = 0;
                Ram_Data = 0;
                
                while (ack == 0)
                    @(negedge cpu_clk);
                Full_read_line = {data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0],data_urandom[RAM_LINE-1:0]};
            
                case (addr_urandom[AOFFSET_WIDTH - 1])
                    'b0: real_data = Full_read_line[SYS_WIDTH-1:0];
                    'b1: real_data = Full_read_line[SYS_WIDTH*2-1:SYS_WIDTH];
                endcase
                
                if (CPU_RData == real_data)
                    $display("Valid cpu - %d, ram - %d", CPU_RData, real_data);
                else begin
                    $display("!!!!!!!!!!!!!!!!!!!!! INVALID cpu - %d, ram - %d", CPU_RData, real_data);
                end
            end else
                $display("HIT");
            
            

            for(i=0; i<5; i=i+1)
                @(negedge ram_clk);   
                
        end
        $display("Finished");

        
        $finish;
        
    end

endmodule
