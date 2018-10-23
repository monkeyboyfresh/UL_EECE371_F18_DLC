module matrix_mult_tb;

reg [23:0] a,b;
wire [15:0] z;

matrix_mult u0(a,b,z);


initial
begin

a[23:16]=8'd5;
a[15:8]=8'd2;
a[7:0]=8'd3;
b[23:16]=8'd4;
b[15:8]=8'd2;
b[7:0]=8'd6;

end


endmodule
