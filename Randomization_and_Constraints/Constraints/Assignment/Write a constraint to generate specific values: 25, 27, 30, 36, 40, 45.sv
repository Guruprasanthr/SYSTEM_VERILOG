class packet;
  randc byte a;
  
  constraint specific {a inside {25,27,30,36,40,45};}
endclass

module  test;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(6)begin
      pkt.randomize();
      $display(" a = %0d ",pkt.a);
    end
  end
endmodule

output
 a = 27 
 a = 30 
 a = 36 
 a = 25 
 a = 40 
 a = 45 
