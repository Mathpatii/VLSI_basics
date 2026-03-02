`timescale 1ns/1ps
module counter_test;
reg clk,rst,m;
wire[3:0]count;
counter counter1(clk,m,rst,count);
initial
clk=0;
always #5 clk=~clk;
initial
begin
rst=0;
#5; m=0;
#200;m=1;
#200;rst=1;
m=0;
#100;rst=0;
end
initial
#1400 $finish;
endmodule
