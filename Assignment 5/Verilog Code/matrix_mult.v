module matrix_mult(a,b,z);

input [23:0] a,b;
wire [7:0] a_temp [2:0];
wire [7:0] b_temp [2:0];

//wire [15:0] acc;
wire [15:0] acc_temp [2:0];
wire [15:0] p [2:0];
output [15:0] z ;


assign {a_temp[2],a_temp[1],a_temp[0]} = a;
assign {b_temp[2],b_temp[1],b_temp[0]} = b;
//assign {acc_temp[2],acc_temp[1],acc_temp[0]} = acc;



mac u0(a_temp[0],b_temp[0],p[0],0,acc_temp[0]);
mac u1(a_temp[1],b_temp[1],p[1],acc_temp[0],acc_temp[1]);
mac u2(a_temp[2],b_temp[2],p[2],acc_temp[1],acc_temp[2]);

assign z = acc_temp[2];

endmodule