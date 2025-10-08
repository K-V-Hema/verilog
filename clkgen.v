`timescale 1ns/1ps
module tb;
reg clk=0;
real freq=100;
real tp;
initial begin
tp=1000/freq;
forever #(tp/2)clk=~clk;
end
initial begin
#1000;
$finish;
end
endmodule

