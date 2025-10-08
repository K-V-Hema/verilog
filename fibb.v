module tb;
reg [15:0] arr[15:0];
integer i;
initial begin
arr[0]=0;
arr[1]=1;
for(i=2;i<16;i=i+1)begin 
arr[i]=arr[i-1]+arr[i-2];
end
for(i=0;i<16;i=i+1)begin
$display("{arr[%0d]}=%0d",i,arr[i]);
end
end
endmodule

