module tb;
reg [95:0]a;
initial begin
 	a={$random,$random,$random};
	#3;
	$display("a=%b",a);
end
endmodule

