class packet;
  rand byte addr1;
  randc byte addr2;
   function void pre_randomize();
     $display("addr1=%0d,addr2=%0d",addr1,addr2);
   endfunction
  function void post_randomize();
     $display("addr1=%0d,addr2=%0d",addr1,addr2);
  endfunction
endclass

module tb;
  initial begin
    packet p1;
    p1 = new();
    p1.randomize();
      end
endmodule


output
# KERNEL: addr1=0,addr2=0
# KERNEL: addr1=70,addr2=-72
