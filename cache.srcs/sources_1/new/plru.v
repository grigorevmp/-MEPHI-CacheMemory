`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2023 23:43:11
// Design Name: 
// Module Name: plru
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


// TODO: Parameters
module plru(
    input clk,
    input reset,
    input plru,
    input [1:0] chIn,
    output reg [1:0] chOut
);

    
    
    reg B0 = 1'b0;
    reg B1 = 1'b0;
    reg B2 = 1'b0;
    
    localparam A = 0;
    localparam B = 1;
    localparam C = 2;
    localparam D = 3;
    
    /* 
        Okay, let's try to implement this algo
        PLRU algo is about tree-based algorithm
        
        We change BX on any channel change, lets set Channels 1 to 4 as A, B, C, D
        
        Bit: 1/0
        
        B1: AB/CD
        B2: A/B
        B3: C/D
        
        And as result we will get:
        
        B1 B2 B3 Res
        0  0  X  00
        0  1  X  01
        1  X  0  10
        1  X  1  11
    */
    
    always @(posedge clk) begin
        if (plru & ~reset) begin
            case (chIn)
                A: {B0,B1} <= 2'b11;
                B: {B0,B1} <= 2'b10;
                C: {B0,B2} <= 2'b01;
                D: {B0,B2} <= 2'b00;
            endcase
        end
        
        if (reset) begin
          {B0, B1, B2} <= 3'b000;
        end
    end
        
    always @(*) begin
        casez ({B0, B1, B2})
            'b00?: chOut <= A;
            'b01?: chOut <= B;
            'b1?0: chOut <= C;
            'b1?1: chOut <= D;
        endcase
    end
    
endmodule
