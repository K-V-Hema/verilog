module tb;
integer n;
function automatic integer fact(input integer p); begin
	if(p>1) 
		fact=p*fact(p-1);	
	else 
		fact=1;
end
endfunction
initial begin
	n=fact(3);
	$display("factorial of 3=%0d",n);
end
endmodule
