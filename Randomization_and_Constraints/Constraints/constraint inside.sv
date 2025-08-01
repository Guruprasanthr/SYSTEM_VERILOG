class packet;
  rand byte addr;
  rand byte start_addr;
  rand byte end_addr;
  
  constraint addr_1_range { addr inside {[start_addr:end_addr]}; }
endclass

module constr_inside;
  initial begin
    packet pkt;
    pkt = new();
    $display("------------------------------------");
    repeat(3) begin
      pkt.randomize();
      $display("start_addr = %0d,end_addr = %0d",pkt.start_addr,pkt.end_addr);
      $display("addr = %0d",pkt.addr);
      $display("------------------------------------");
    end
  end
endmodule


output
# KERNEL: ------------------------------------
# KERNEL: start_addr = 42,end_addr = 75
# KERNEL: addr = 68
# KERNEL: ------------------------------------
# KERNEL: start_addr = 46,end_addr = 102
# KERNEL: addr = 52
# KERNEL: ------------------------------------
# KERNEL: start_addr = -47,end_addr = 107
# KERNEL: addr = 77
# KERNEL: ------------------------------------
