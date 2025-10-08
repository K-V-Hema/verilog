module tb;
integer arr[9:0];
integer i,value,j;
reg r;
initial begin
	for(i=0;i<10;) begin 
	value=$urandom_range(40,49);
	r=0;
	for(j=0;j<i;j=j+1) begin
		if(arr[j]==value)begin
			r=1;
		end
	end
	if(!r) begin
		arr[i]=value;
		$display("arr[%0d]=%0d",i,arr[i]);
		i=i+1;
	end
	end
end
endmodule

