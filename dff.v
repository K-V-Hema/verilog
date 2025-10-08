module dff(clk,res,d,q);
input clk,res,d;
output reg q;
//always@(posedge clk or posedge res) begin
always@(posedge clk) begin
	if(res) 
	q<=0;
	else
	q<=d;
end
endmodule
