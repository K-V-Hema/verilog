module seq(x,clk,res,out);
input clk,res,x;
output reg out;
parameter S0=0,S1=1,S2=2,S3=3,S4=4;
reg [2:0]ps,ns;
always@(posedge clk) begin
	if(res)
		ps<=S0;
	else
		ps<=ns;
end
always@(*) begin
	case(ps)
		S0: begin out=0;
			ns=x? S1:S0;end
		S1: begin out=0;
			ns=x? S1:S2;end
		S2: begin out=0;
			ns=x? S1:S3;end
		S3: begin out=0;
			ns=x? S4:S0;end
		S4: begin out=1;
			ns=x? S1:S2;end
		default: begin 
			out=0;
			ns=S0;
			end
	endcase
end
endmodule
