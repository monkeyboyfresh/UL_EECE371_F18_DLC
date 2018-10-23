module mac(a,b,temp,acc,z);
  input[7:0] a;
  input[7:0] b;
  input[15:0] acc;
  
  output[15:0] temp;
  output[15:0] z;

  assign temp = a*b;
  assign z = temp + acc;
endmodule

