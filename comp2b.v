`include "comp.v"
module comp_2b(a,b,gt,eq,lt);
input [1:0]a,b;
output gt,eq,lt;
wire gt1,eq1,lt1,gt0,eq0,lt0,n1,n2;
comp g1(.a(a[1]),.b(b[1]),.gt(gt1),.lt(lt1),.eq(eq1));
comp g2(.a(a[0]),.b(b[0]),.gt(gt0),.lt(lt0),.eq(eq0));
and g3(n1,eq1,gt0);
and g4(n2,eq1,lt0);
and g5(eq,eq1,eq0);
or g6(gt,gt1,n1);
or g7(lt,n2,lt1);
endmodule
