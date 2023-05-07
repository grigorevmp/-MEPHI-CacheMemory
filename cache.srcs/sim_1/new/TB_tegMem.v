`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 22:40:19
// Design Name: 
// Module Name: TB_tegMem
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


module TB_tegMem();
    localparam ATEG_WIDTH = 8;
    localparam AINDEX_WIDTH = 4;
    localparam CHANNEL_WIDTH = 2;
    
    reg clk = 'b0;
    reg reset = 'b1;
    reg [ATEG_WIDTH + AINDEX_WIDTH - 1:0] addr = 12'b00001111_0000;
    reg wr = 'b0;
    reg md = 'b0;
    
    wire [ATEG_WIDTH + 2 - 1:0] tegOut;
    wire [CHANNEL_WIDTH - 1:0] chan;
    wire hit;
    
    tegMem #(
        .ATEG_WIDTH(ATEG_WIDTH),
        .AINDEX_WIDTH(AINDEX_WIDTH),
        .CHANNEL_WIDTH(CHANNEL_WIDTH)
    ) m (clk, reset, addr, wr, md, tegOut, chan, hit);
    
    always #10 clk <= ~clk;

    initial #30 begin
        // reset
        reset = 1;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        reset = 0;
        addr = 12'b00001111_0000;
        wr = 1;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        addr = 12'b00001111_0000;
        wr = 0;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        addr = 12'b00110011_0011;
        wr = 1;
        md = 1;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        addr = 12'b11110011_0000;
        wr = 1;
        md = 0;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        addr = 12'b00110011_0011;
        wr = 0;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        addr = 12'b11110010_0000;
        wr = 0;
        md = 0;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        addr = 12'b11110010_0000;
        wr = 0;
        md = 0;
        @(posedge clk);
        
        $display("seresr");
        
        $finish;
    end 
  

endmodule