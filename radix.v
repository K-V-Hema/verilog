module tb;
reg [15:0]a;
initial begin
	a='d743;
	
	$display("octal=%o",a);
	$display("hexa=%h",a);
	$display("decimal=%d",a);
	$display("binary=%b",a);
end
endmodule

