class packet;
  rand byte addr;
  constraint weighted {addr dist {2:/3,[10:15]:/4};}
endclass
module weigh;
  initial begin
  packet p1;
  p1=new();
  repeat(15)begin
    p1.randomize();
    $display("addr=%0d",p1.addr);
  end
  end
endmodule

output

# KERNEL: addr=2
# KERNEL: addr=2
# KERNEL: addr=14
# KERNEL: addr=2
# KERNEL: addr=2
# KERNEL: addr=2
# KERNEL: addr=2
# KERNEL: addr=13
# KERNEL: addr=2
# KERNEL: addr=14
# KERNEL: addr=2
# KERNEL: addr=13
# KERNEL: addr=13
# KERNEL: addr=11
# KERNEL: addr=2
