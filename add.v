module add(p,q,r);
input p,q;
output reg r;
function add(input integer p,q); begin
	add=p+q;
end
endfunction
always@(*) begin
	r=add(p,q);	
end
endmodule

