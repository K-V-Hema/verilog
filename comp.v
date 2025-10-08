module comp(a,b,gt,eq,lt);
input a,b;
output gt,eq,lt;
wire n1,n2;
not g1(n1,a);
not g2(n2,b);
and g3(lt,n1,b);
and g4(gt,a,n2);
xnor g5(eq,a,b);
endmodule
