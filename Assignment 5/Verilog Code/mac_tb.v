module mac_tb;

reg [7:0] a,b [2:0];
reg [15:0] acc [2:0];
wire [15:0] temp,z [2:0];
mac u0(a[0],b[0],temp[0],acc[0],z[0]);
mac u1(a[1],b[1],temp[1],acc[1],z[1]);
mac u2(a[2],b[2],temp[2],acc[2],z[2]);


initial
begin

a[0]=8'd5;
a[1]=8'd2;
a[2]=8'd3;
b[0]=8'd4;
b[1]=8'd2;
b[2]=8'd3;

acc[0]=16'd0;
acc[1]=16'd0;
acc[2]=16'd0;
end


endmodule