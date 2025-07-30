class packet;
  rand byte addr;
  constraint range { addr < 5; }
endclass

class packet2;
  rand byte addr1;
  constraint range1 { addr1 > 5; }
endclass

module name;
  initial begin
    packet pkt1;
    packet2 pkt2;
    
    pkt1 = new();
    pkt2 = new();

    $display("-------------------------");
    repeat (5) begin 
      pkt1.randomize();
      $display("addr  = %0d", pkt1.addr);
    end

    $display("-------------------------");
    repeat (5) begin
      pkt2.randomize();
      $display("addr1 = %0d", pkt2.addr1);
    end
  end
endmodule


output

-------------------------
addr  = -3
addr  = -29
addr  = -15
addr  = -28
addr  = -27
-------------------------
addr1 = 87
addr1 = 54
addr1 = 100
addr1 = 100
addr1 = 88
