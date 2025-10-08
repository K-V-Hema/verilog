module tb;
integer num1,num2;
initial begin
$value$plusargs("num1=%d",num1);
$value$plusargs("num2=%d",num2);
$display("num1 ** num2=%0d",num1**num2);
end
endmodule
