module tb;
reg [7:0]a;
initial begin
repeat(7)begin
a=$random;
#3;
if(a%2==0)
$display("a=%0d is even",a);
else
$display("a=%0d is odd",a);
end
end
endmodule
