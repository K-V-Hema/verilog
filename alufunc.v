module alu(in1,in2,oper,y);
input [7:0]in1,in2;
input [3:0]oper;
output reg [7:0]y;
function  [7:0]al(input [7:0]in1,input [7:0]in2,input [3:0] oper); begin
	case(oper) 
		4'b0000: al=in1+in2;
		4'b0001: al=in1-in2;
		4'b0010: al=in1*in2;
		4'b0011: al=in1/in2;
		4'b0100: al=in1%in2;
		4'b0101: al=(in1) ** in2;
		4'b0110: al=in1<<in2;
		4'b0111: al=in1>>in2;
	endcase
end
endfunction
always@(*) begin
	y=al(in1,in2,oper);
end
endmodule





