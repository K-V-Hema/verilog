module mux(i,s,y);
input [1:0]i;
input s;
output reg y;
//output y;
always@(*)begin
if(s==0) y=i[0];
else y=i[1];
end
//assign y=(!s & i[0]) |(s& i[1]);
endmodule
