`include "24dec.v"
module dec38(i,y);
input [2:0]i;
wire n1;
output [7:0]y;
not g1(n1,i[2]);
dec24 g2(.y({y[3],y[2],y[1],y[0]}),.i({i[1],i[0]}),.en(n1));
dec24 g3(.y({y[7],y[6],y[5],y[4]}),.i({i[1],i[0]}),.en(i[2]));
endmodule


