module tb;
real r=3.14;
reg [4:0]bits;
initial begin
	bits=$realtobits(r);
	$display("real to bits:%b",bits);
	r=$bitstoreal(bits);
	$display("bits to real:%f",r);
end
endmodule
