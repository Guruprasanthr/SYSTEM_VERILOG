class packet;
  rand byte addr1;
  randc byte addr2;
endclass

module tb;
  initial begin
    packet p1;
    p1 = new();
    repeat(10) begin
      p1.randomize();
      $display("addr1 = %0d, addr2 = %0d", p1.addr1, p1.addr2);
    end
  end
endmodule


output
# KERNEL: addr1 = 70, addr2 = -72
# KERNEL: addr1 = 35, addr2 = -26
# KERNEL: addr1 = -44, addr2 = 2
# KERNEL: addr1 = -33, addr2 = 31
# KERNEL: addr1 = -83, addr2 = 78
# KERNEL: addr1 = -69, addr2 = -100
# KERNEL: addr1 = 88, addr2 = 19
# KERNEL: addr1 = -121, addr2 = 52
# KERNEL: addr1 = -40, addr2 = -57
# KERNEL: addr1 = 10, addr2 = 83
