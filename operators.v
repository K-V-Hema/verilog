module tb;
reg [3:0]a,b;
reg [3:0]c;
reg [3:0]d;
reg [3:0]e;
reg [3:0]f;
reg [3:0]g;
initial begin
	a=4'b1010;
	b=4'b1110;
	c=a&b;
	d=a|b;
	e=~a;
	f=a^b;
	g=a~^b;
	$display("c=%b,d=%b,e=%b,f=%b,g=%b",c,d,e,f,g);
end
endmodule
