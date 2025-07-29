class packet;
  rand byte addr1;
  constraint cons{addr1>5;}
endclass

module tb;
  initial begin
    packet p1;
    p1 = new();
    repeat(10) begin
      p1.randomize();
      $display("addr1=%0d",p1.addr1);
    end
  end
endmodule


output  
# KERNEL: addr1=19
# KERNEL: addr1=114
# KERNEL: addr1=54
# KERNEL: addr1=35
# KERNEL: addr1=116
# KERNEL: addr1=82
# KERNEL: addr1=97
# KERNEL: addr1=18
# KERNEL: addr1=47
# KERNEL: addr1=9
