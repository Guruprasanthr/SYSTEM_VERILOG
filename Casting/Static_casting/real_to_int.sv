module real_to_int;
  real r;
  int i;
  initial begin
  r= 3'b110;
    $display("r=%b",r);
    $display("i=%b",i);

    i= int'(r);
    $display("i=%d",i);
  end
endmodule

output:
# KERNEL: r=00000000000000000000000000000110
# KERNEL: i=00000000000000000000000000000000
# KERNEL: i=          6
