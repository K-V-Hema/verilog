module tb;
reg [15:0]a=16'b1111_0101_1010_1100;
reg [15:0]b;
integer i;
initial begin
	//b={a[7:0],a[15:8]};
//	b={a[3:0],a[11:8],a[7:4],a[15:12]};
	for(i=0;i<16;i=i+1)
		b[i]=a[15-i];
	$display("b=%b",b);
end
endmodule
