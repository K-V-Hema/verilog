`timescale 1ns/1ps
module tb;
reg clk;
real freq,tp,dc,ton,toff;
initial begin
	$value$plusargs("freq=%f",freq);
	$value$plusargs("dc=%f",dc);
	tp=1000/freq;
	ton=(dc*tp)/100;
	toff=tp-ton;
	$display("freq=%0f\tdutycycle=%0f\ttp=%0f\tton=%0f\ttoff=%0f",freq,dc,tp,ton,toff);
forever begin
	clk=0;
	#(toff);
	clk=1;
	#(ton);
end
end
initial begin
#100;
$finish;
end
endmodule
