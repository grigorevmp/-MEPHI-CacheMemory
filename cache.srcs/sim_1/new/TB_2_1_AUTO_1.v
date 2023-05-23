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



// TB_2_1_CACHE
// TB_2A_1_CACHE
module TB_2A_1_CACHE();
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
    
    reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr = 0;
    
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

    always #32 ram_clk <= ~ram_clk;
    always #10 cache_clk <= ~cache_clk; 
    always #3 cpu_clk <= ~cpu_clk;
    
    reg [RAM_LINE - 1:0] data_urandom;
    reg [ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0] addr_urandom;
    reg [CACHE_LINE - 1:0] Full_read_line;
    reg [SYS_WIDTH-1:0] real_r_data;
    
    reg [SYS_WIDTH-1:0] valid_data [4096 - 1:0][4-1:0];
    integer wrong = 0;
    
    integer i;
    integer index;
    integer j;
    integer wrong = 0;
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
        test_mem_factor = 1; 
        // ITERS
        full_size = test_mem_size / test_mem_factor;
        
        
        $display("Tests started");
     
        for(j=0; j<full_size; j=j+1) begin
                
            $display("Iteration, %d", j + 1);
            @(posedge cpu_clk);
            addr_urandom = $random;
            addr = addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0];
            $display("Addr: %b", addr);
            $display("Addr: %h", addr);
            wr_cpu = addr_urandom[0];
            rd_cpu = ~wr_cpu;
            if (addr_urandom[0]) begin
                $display("WRITE");
                    
                Full_read_line = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                
                case (addr_urandom[AOFFSET_WIDTH-1:2])
                    'b00: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][0] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                    'b01: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][1] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                    'b10: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][2] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                    'b11: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][3] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                endcase  
                
            end else
                $display("READ");
            WData = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]}; 
                  
            Ram_Data = 0;
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
            
            while (Rnw == 0 && ack == 0)
                @(negedge cpu_clk);
                
            if (Rnw) begin
                @(negedge ram_clk);
                Ram_Data = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                $display("RData: %h", Ram_Data);
                ram_ack = 1;
                    
                for(i=0; i<8; i=i+1)
                    @(negedge ram_clk);
                ram_ack = 0;
                Ram_Data = 0;
                
                while (ack == 0)
                    @(negedge cpu_clk);
                    
                Full_read_line = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0],addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                
                case (addr_urandom[AOFFSET_WIDTH-1:2])
                    'b00: real_r_data = Full_read_line[SYS_WIDTH-1:0];
                    'b01: real_r_data = Full_read_line[SYS_WIDTH*2-1:SYS_WIDTH];
                    'b10: real_r_data = Full_read_line[SYS_WIDTH*3-1:SYS_WIDTH*2];
                    'b11: real_r_data = Full_read_line[SYS_WIDTH*4-1:SYS_WIDTH*3];
                endcase  
                
         
                    valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][0] = real_r_data;
                    valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][1] = real_r_data;
                    valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][2] = real_r_data;
                    valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][3] = real_r_data;
              
              
               if (addr_urandom[0]) begin     
                  case (addr_urandom[AOFFSET_WIDTH-1:2])
                        'b00: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][0] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                        'b01: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][1] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                        'b10: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][2] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                        'b11: valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:AOFFSET_WIDTH]][3] = {addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1:0]};
                    endcase  
                end
                
                if (~addr_urandom[0]) begin
                    if (CPU_RData == real_r_data)
                        $display("Result: Valid");
                    else begin
                        $display("Result: !!!!!!!!!!!!!!!!!!!!! INVALID (READ)");
                        $display("Current: %h", CPU_RData);
                        $display("Real: %h", real_r_data);
                        wrong = wrong + 1;
                    end
                end
            end else if (~addr_urandom[0]) begin
                //$display("Hit");
                   case (addr_urandom[AOFFSET_WIDTH-1:2])
                        'b00: index = 0;
                        'b01: index = 1;
                        'b10: index = 2;
                        'b11: index = 3;
                    endcase  
                
                if (CPU_RData == valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1: AOFFSET_WIDTH]][index])
                    $display("Result: Valid Hit");
                else begin
                    $display("Current: %h", CPU_RData);
                    $display("Real: %h", valid_data[addr_urandom[ATEG_WIDTH + AINDEX_WIDTH + AOFFSET_WIDTH - 1: AOFFSET_WIDTH]][index]);
                    $display("Result: !!!!!!!!!!!!!!!!!!!!! INVALID (HIT)");
                    wrong = wrong + 1;
                end
            end
            

            for(i=0; i<5; i=i+1)
                @(negedge ram_clk);   
                
        end
        $display("Finished");
        $display("Wrong %d", wrong);

        
        $finish;
        
    end

endmodule
