`include "mux4.v"
module mux81(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
output y;
wire n1,n2;
mux4 g1(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s1),.s1(s2),.y(n1));
mux4 g2(.i0(i4),.i1(i5),.i2(i6),.i3(i7),.s0(s1),.s1(s2),.y(n2));
mux4 g3(.i0(n1),.i1(1'b0),.i2(n2),.i3(1'b0),.s0(s0),.s1(1'b0),.y(y));
endmodule
