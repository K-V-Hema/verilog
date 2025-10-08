module tb;
real a=3;
integer b=10;
real c;
initial begin
	c=a/b;
	$display("c=%f",c);
end
endmodule
