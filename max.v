module tb;
reg [7:0] arr[7:0];
reg [7:0]max;
integer i;
initial begin
for(i=0;i<8;i=i+1)begin
arr[i]=$random;
$display("arr[%0d]=%0d",i,arr[i]);
end
max=arr[0];
for(i=0;i<8;i=i+1)begin
if(arr[i]>max) 
max=arr[i];
end
$display("maximum number is=%0d",max);
end
endmodule
