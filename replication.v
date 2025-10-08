module tb;
reg [1:0]a=2'b11;
reg b=1'b0;
reg [1:0]c=2'b10;
integer catr;
initial begin
	catr={{4{a}},b,{2{c}}};
	$display("catr=%b",catr);
end
endmodule
