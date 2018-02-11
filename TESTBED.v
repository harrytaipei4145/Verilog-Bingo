`timescale 1ns/1ps
`include "PATTERN.v"
`include "BINGO.v"


//=====================================================================================
//  Waveform Generation
//=====================================================================================
    


module TESTBED();





//=====================================================================================
//  Port Declaration
//=====================================================================================
wire [1:0]IN_11,IN_12,IN_13,IN_21,IN_22,IN_23,IN_31,IN_32,IN_33;
wire CLK;
wire [1:0]VERTICAL, HORIZONTAL, DIAGONAL;
wire ZERO, ALL;

PATTERN pattern(.IN_11(IN_11) ,.IN_12(IN_12),.IN_13(IN_13),.IN_21(IN_21),.IN_22(IN_22),.IN_23(IN_23),.IN_31(IN_31),.IN_32(IN_32),.IN_33(IN_33),
				.CLK(CLK) ,
				.VERTICAL(VERTICAL) , .HORIZONTAL(HORIZONTAL) , .DIAGONAL(DIAGONAL) , .ALL(ALL) , .ZERO(ZERO));
BINGO bingo(.IN_11(IN_11) ,.IN_12(IN_12),.IN_13(IN_13),.IN_21(IN_21),.IN_22(IN_22),.IN_23(IN_23),.IN_31(IN_31),.IN_32(IN_32),.IN_33(IN_33),
				.CLK(CLK) ,
				.VERTICAL(VERTICAL) , .HORIZONTAL(HORIZONTAL) , .DIAGONAL(DIAGONAL) , .ALL(ALL) , .ZERO(ZERO));


//=====================================================================================
//  TestBench
//=====================================================================================
initial begin
$fsdbDumpfile("BINGO.fsdb");
$fsdbDumpvars;
end
endmodule





