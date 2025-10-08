module tb;
reg signed [9:0]b=10'b11_0101_0101;
reg signed [9:0]a;
reg [9:0]c;
initial begin
a=b>>2;
c=b>>2;
$display("a=%b,c=%b",a,c);
end
endmodule
