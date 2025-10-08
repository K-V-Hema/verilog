`timescale 1ns/1ps
module tb;
real tp=10.0;
real dc=30;
real jitter=10;
real tp_jitter,tp_measured;
real cur_edge_time,prev_edge_time,clk_freq;
reg clk=0;
initial begin
	tp_jitter=($urandom_range(100-jitter,100+jitter)/100.0)*tp;
	forever #(tp/2)clk=~clk;
end
always @(posedge clk)begin
	cur_edge_time=$realtime;
	if(prev_edge_time!=0)begin
		tp_measured=cur_edge_time-prev_edge_time;
		clk_freq=(1000/tp_measured)/1000000;
	end
	prev_edge_time=cur_edge_time;
end
initial begin
#1000;
$finish;
end
endmodule
	
