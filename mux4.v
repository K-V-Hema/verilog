module mux4(y,i0,i1,i2,i3,s0,s1);
input i0,i1,i2,i3;
input s0,s1;
output y;
assign y=s0?(s1?i3:i2):(s1?i1:i0);
/*always@ (i0,i1,i2,i3,sel) begin
case (s)
	2'b00  :  y=i0;
	2'b01  :  y=i1;
	2'b10  :  y=i2;
	default  :  y=i3;
	endcase
end*/
//assign y=(i[0]&(!s0)&(!s1))|(i[1]&(!s0)&(s1))|(i[2]&(s0)&(!s1))|(i[3]&(s0)&(s1));
endmodule
