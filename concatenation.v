module tb;
reg a=1'b1,b=1'b0,c=1'b1;
integer f;
reg [2:0]catd;
initial begin
	f=31'b110;
	catd={a,b,c,f};
	$display("catd=%b",{a,b,c,f});
end
endmodule
