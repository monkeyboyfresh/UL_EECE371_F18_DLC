module mac(z, a, b,carry,acc);
	output [15:0] carry;
	output [15:0] z;
	input  [7:0] a;
	input  [7:0] b;
	input  [7:0] acc;

	assign carry = a * b;
	assign z = carry + acc;
endmodule