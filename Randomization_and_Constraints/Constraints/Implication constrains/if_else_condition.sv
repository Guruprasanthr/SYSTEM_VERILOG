class packet;
  rand byte addr;
  string addr_range;
  constraint constr{if(addr_range=="small")addr<8; else addr>8;}
endclass
module implication;
  initial begin
  packet p1;
  p1=new();
  p1.addr_range="small";
    repeat(2)begin
    p1.randomize();
    $display("addr_range=%0s,addr=%0d",p1.addr_range,p1.addr);
  end
    $display("-------------------");
    p1.addr_range="big";
    repeat(2)begin
    p1.randomize();
    $display("addr_range=%0s,addr=%0d",p1.addr_range,p1.addr);
  end
  end
endmodule

output
addr_range=small,addr=-103
addr_range=small,addr=-71
--------------------
addr_range=big,addr=91
addr_range=big,addr=74
