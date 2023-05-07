`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 00:08:43
// Design Name: 
// Module Name: TB_plru
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


module TB_plru();
    reg [1:0] chIn;
    reg clk = 'b0;
    reg reset = 'b0;

    wire [1:0] chOut;   
    
    localparam A = 0;
    localparam B = 1;
    localparam C = 2;
    localparam D = 3;
    
    plru p (clk, reset, chIn, chOut);
    
    always #10 clk <= ~clk;

    initial #30 begin
        // B0 B1 B2
        // 1  0  0
        // Result: C - 10
        chIn = B;  
        @(posedge clk);
    
        // B0 B1 B2
        // 1  1  0
        // Result: C - 10
        chIn = A;
        @(posedge clk);
    
        // B0 B1 B2
        // 0  1  1
        // Result: B - 01
        chIn = C;
        @(posedge clk);
    
        // B0 B1 B2
        // 1  0  1
        // Result: D - 11
        chIn = B;
        @(posedge clk);
    
        // B0 B1 B2
        // 0  0  0
        // Result: A - 00
        chIn = D;
        @(posedge clk);
        $finish;
    end 
     

endmodule
