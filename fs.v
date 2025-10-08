module fs(a,b,c,bor,diff);
input a,b,c;
output bor,diff;
wire d,e,f,g,h;
assign e=a^b;
assign f=~e;
assign d=~a;
assign h=d&b;
assign g=f&c;
assign diff=e^c;
assign bor=g|h;
endmodule
