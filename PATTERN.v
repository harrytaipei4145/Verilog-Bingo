`timescale 1ns/1ps

`define CYCLE_TIME 30

module PATTERN(	IN_11 , IN_12 , IN_13 ,
				IN_21 , IN_22 , IN_23 ,
				IN_31 , IN_32 , IN_33 ,
				CLK ,
				VERTICAL , HORIZONTAL , DIAGONAL , ALL , ZERO);

//=====================================================================================
//  Input & Output Declaration
//=====================================================================================



output reg[1:0]IN_11, IN_12, IN_13;
output reg[1:0]IN_21, IN_22, IN_23;
output reg[1:0]IN_31, IN_32, IN_33;
input [1:0]VERTICAL, HORIZONTAL, DIAGONAL;
input ZERO, ALL;
output reg CLK;

reg [1:0]h,v,d;
reg all,zero;


//=====================================================================================
//  Variable Declaration
//=====================================================================================

reg [1:0]temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;
integer i;
parameter pattern_num = 1000;


parameter cycle = 20;
always #(cycle/2) CLK = ~CLK;


//=====================================================================================
//  Test Pattern
//=====================================================================================

initial
begin
	CLK=0;
	all=0;
zero=0;
	//Special Case Pattern
	//all=1
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=0;
	IN_22=0;
	IN_23=0;
	IN_31=0;
	IN_32=0;
	IN_33=0;
	h=3;
	v=3;
	d=2;
	zero=0;
	all=1;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
$display("correct");
	else 
	$display("incorrect");
	
	//zero=1
	IN_11=1;
	IN_12=2;
	IN_13=3;
	IN_21=3;
	IN_22=0;
	IN_23=1;
	IN_31=1;
	IN_32=3;
	IN_33=2;
	h=0;
	v=0;
	d=0;
	zero=1;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
$display("correct");
	else 
	$display("incorrect");

	
	
	//1橫
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=1;
	IN_22=2;
	IN_23=3;
	IN_31=1;
	IN_32=2;
	IN_33=3;
	h=1;
	v=0;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//1直
	IN_11=1;
	IN_12=1;
	IN_13=0;
	IN_21=2;
	IN_22=2;
	IN_23=0;
	IN_31=3;
	IN_32=3;
	IN_33=0;
	h=0;
	v=1;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//2橫
	IN_11=1;
	IN_12=1;
	IN_13=1;
	IN_21=2;
	IN_22=2;
	IN_23=2;
	IN_31=0;
	IN_32=3;
	IN_33=0;
	h=2;
	v=0;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//2直
	IN_11=0;
	IN_12=1;
	IN_13=0;
	IN_21=0;
	IN_22=1;
	IN_23=2;
	IN_31=0;
	IN_32=1;
	IN_33=0;
	h=0;
	v=2;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//h=0,v=3;
	IN_11=1;
	IN_12=2;
	IN_13=3;
	IN_21=1;
	IN_22=2;
	IN_23=3;
	IN_31=1;
	IN_32=2;
	IN_33=3;
	h=0;
	v=3;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
     $display("correct");
	else 
	$display("incorrect");
	
	
	//h=0,v=3;
	IN_11=1;
	IN_12=1;
	IN_13=1;
	IN_21=2;
	IN_22=2;
	IN_23=2;
	IN_31=3;
	IN_32=3;
	IN_33=3;
	h=3;
	v=0;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//1橫1直
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=1;
	IN_22=0;
	IN_23=1;
	IN_31=2;
	IN_32=0;
	IN_33=2;
	h=1;
	v=1;
	d=0;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	
	//1橫2直+1斜線
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=1;
	IN_22=0;
	IN_23=0;
	IN_31=2;
	IN_32=0;
	IN_33=0;
	h=1;
	v=2;
	d=1;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	//2橫1直+1斜線
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=0;
	IN_22=0;
	IN_23=0;
	IN_31=2;
	IN_32=1;
	IN_33=0;
	h=2;
	v=1;
	d=1;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//2橫2直
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=0;
	IN_22=0;
	IN_23=0;
	IN_31=1;
	IN_32=0;
	IN_33=0;
	h=2;
	v=2;
	d=1;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//1斜線
	IN_11=0;
	IN_12=1;
	IN_13=2;
	IN_21=1;
	IN_22=0;
	IN_23=3;
	IN_31=1;
	IN_32=0;
	IN_33=0;
	h=0;
	v=0;
	d=1;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//1斜線1橫
	IN_11=0;
	IN_12=1;
	IN_13=2;
	IN_21=1;
	IN_22=0;
	IN_23=3;
	IN_31=0;
	IN_32=0;
	IN_33=0;
	h=1;
	v=0;
	d=1;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	//1斜線1直
	IN_11=0;
	IN_12=1;
	IN_13=2;
	IN_21=0;
	IN_22=0;
	IN_23=3;
	IN_31=0;
	IN_32=1;
	IN_33=0;
	h=0;
	v=1;
	d=1;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	

	
	//2斜線1橫
	IN_11=0;
	IN_12=0;
	IN_13=0;
	IN_21=1;
	IN_22=0;
	IN_23=1;
	IN_31=0;
	IN_32=1;
	IN_33=0;
	h=1;
	v=0;
	d=2;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	//2斜線1直
	IN_11=0;
	IN_12=1;
	IN_13=0;
	IN_21=0;
	IN_22=0;
	IN_23=1;
	IN_31=0;
	IN_32=1;
	IN_33=0;
	h=0;
	v=1;
	d=2;
	zero=0;
	all=0;
	@(negedge CLK);
	if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
    $display("correct");
	else 
	$display("incorrect");
	
	
	
	
	
	//General Case Pattern
	
for(i=0 ; i<pattern_num ; i=i+1)
begin
@(negedge CLK);

temp1={$random()}%4;
temp2={$random()}%4;
temp3={$random()}%4; 
temp4={$random()}%4;
temp5={$random()}%4;
temp6={$random()}%4; 
temp7={$random()}%4;
temp8={$random()}%4;
temp9={$random()}%4; 

IN_11=temp1;
IN_12=temp2;
IN_13=temp3;
IN_21=temp4;
IN_22=temp5;
IN_23=temp6;
IN_31=temp7;
IN_32=temp8;
IN_33=temp9;

h=0;
v=0;
d=0;

if(IN_11==IN_12&&IN_13==IN_12)
h=h+1;	
if(IN_21==IN_22&&IN_23==IN_22)
h=h+1;
if(IN_31==IN_32&&IN_33==IN_32)
h=h+1;
if(IN_11==IN_21&&IN_21==IN_31)
v=v+1;
if(IN_12==IN_22&&IN_22==IN_32)
v=v+1;	
if(IN_13==IN_23&&IN_23==IN_33)
v=v+1;
if(IN_11==IN_22&&IN_22==IN_33)
d=d+1;
if(IN_13==IN_22&&IN_22==IN_31)
d=d+1;
if(h==3&&v==3)
all=1;
else
all=0;
if(h==0&&v==0&&d==0)
zero=1;
else
zero=0;

@(negedge CLK);
if(v===VERTICAL&&h===HORIZONTAL&&zero===ZERO&&d===DIAGONAL&&all===ALL)	
$display("correct");
	else 
	$display("incorrect");
end	
if(i==pattern_num)
$finish;
end

endmodule
