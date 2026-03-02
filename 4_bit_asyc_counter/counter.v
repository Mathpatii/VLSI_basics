`timescale 1ns/1ps
module counter(clk,rst,m,count);
input clk,rst,m;
output reg[3:0]count;
always @(posedge clk or posedge rst)
begin
if(rst==1)
count<=0;
else if(m==1)
count<=count+1;
else
count<=count-1;
end
endmodule


