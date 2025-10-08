module standard;
  bit[3:0]a;
  initial begin
    repeat(15)begin
      std::randomize(a);
      $display("a=%d",a);
    end
  end
endmodule

output:
# KERNEL: a= 1
# KERNEL: a=15
# KERNEL: a=11
# KERNEL: a= 9
# KERNEL: a=13
# KERNEL: a= 6
# KERNEL: a=15
# KERNEL: a= 8
# KERNEL: a= 0
# KERNEL: a=10
# KERNEL: a= 8
# KERNEL: a= 7
# KERNEL: a=11
# KERNEL: a= 9
# KERNEL: a= 0
