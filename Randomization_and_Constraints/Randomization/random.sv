class packet;
  rand bit [2:0] addr1;
  randc bit [2:0] addr2;
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
# KERNEL: addr1 = 6, addr2 = 0
# KERNEL: addr1 = 3, addr2 = 6
# KERNEL: addr1 = 4, addr2 = 1
# KERNEL: addr1 = 7, addr2 = 7
# KERNEL: addr1 = 5, addr2 = 4
# KERNEL: addr1 = 3, addr2 = 3
# KERNEL: addr1 = 0, addr2 = 5
# KERNEL: addr1 = 7, addr2 = 2
# KERNEL: addr1 = 0, addr2 = 5
# KERNEL: addr1 = 2, addr2 = 2
