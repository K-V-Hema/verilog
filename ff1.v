module ff1(a,b,clk,res,z);
input a,b,clk,res;
output reg z;
reg n,y;
always@(posedge clk) begin
	if(res==1) begin
		y<=1'b0;
		n<=1'b0;
		z<=1'b0;
	end
	else begin
		n<=a;
		y<=a&b;
		z<=~y;
	end
end
endmodule
