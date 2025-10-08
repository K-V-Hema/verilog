`include "mux4.v"
module mux21_41(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
assign s0=0;
assign {i2,i3}=0;
mux4 g1(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
endmodule
