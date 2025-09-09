module int_to_integer;
  int i;
  integer i1;
  initial begin
  i1=8'b00xzxz11;
        $display("i1=%b",i1);
  $display("i=%b",i);
    i= int'(i1);
    $display("i=%b",i);
  end
endmodule

output:

# KERNEL: i1=00000000000000000000000000xzxz11
# KERNEL: i=00000000000000000000000000000000
# KERNEL: i=00000000000000000000000000000011
