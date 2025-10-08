module tb;
reg [15:0]a;
initial begin
	a=$random;
	//a=a|16'h00F0;
	a=a& 16'hFF0F;
	$display("a=%b",a);
end
endmodule
