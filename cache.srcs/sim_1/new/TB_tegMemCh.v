`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 22:39:06
// Design Name: 
// Module Name: TB_tegMemCh
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



module TB_tegMemCh();
    localparam ATEG_WIDTH = 8;
    localparam AINDEX_WIDTH = 4;
    
    reg clk = 'b0;
    reg reset = 'b0;
    reg [ATEG_WIDTH + AINDEX_WIDTH - 1:0] addr = 12'b00001111_0000;
    reg wr = 'b1;
    reg plru_ce = 'b0;
    reg md = 'b0;
    
    wire [ATEG_WIDTH + 2 - 1:0] tegOut;
    wire hit;
    
    tegMemChannel #(.ATEG_WIDTH(ATEG_WIDTH),.AINDEX_WIDTH(AINDEX_WIDTH)) mc (clk, reset, addr, wr, plru_ce, md, tegOut, hit);
    
    always #10 clk <= ~clk;

    initial #30 begin
        // wr
        // index: 0000
        // teg: 00001111
        reset = 1;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        reset = 0;
        addr = 12'b00001111_0000;
        wr = 1;
        plru_ce = 1;
        md = 0;
        @(posedge clk);
        
        // wr
        // index: 0000
        // teg: 00001111
        reset = 0;
        addr = 12'b00001111_0000;
        wr = 0;
        plru_ce = 0;
        md = 0;
        @(posedge clk);
        
        $finish;
    end 
     

endmodule