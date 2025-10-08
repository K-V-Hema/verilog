`timescale 1ns/1ps
module tb;
reg clk;
real freq,dc,jitter;
real tp,tp_jitter,ton,toff;
initial begin
	$value$plusargs("freq=%0f",freq);
	$value$plusargs("dc=%0f",dc);
	$value$plusargs("jitter=%0f",jitter);
	tp=1000/freq;
	ton=(dc*tp)/100;
	toff=tp-ton;
	tp_jitter=($urandom_range(100-jitter,100+jitter)/100.0)*tp;
forever begin
	clk=0;
	#(toff);
	clk=1;
	#(ton);
end
end
initial begin
	#1000;
	$finish;
end
endmodule


