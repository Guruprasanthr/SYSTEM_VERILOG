class packet;
  rand byte addr;
  constraint name ;
endclass
constraint packet::name{addr>5;}
module extend;
  initial begin
  packet p1;
  p1=new();
  repeat(10)begin
  p1.randomize();
    $display("addr=%0d",p1.addr);
  end
  end
endmodule

output
# KERNEL: addr=124
# KERNEL: addr=15
# KERNEL: addr=6
# KERNEL: addr=36
# KERNEL: addr=83
# KERNEL: addr=22
# KERNEL: addr=10
# KERNEL: addr=116
# KERNEL: addr=72
# KERNEL: addr=117
