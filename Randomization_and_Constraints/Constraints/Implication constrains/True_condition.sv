class packet;
  rand byte addr;
  string addr_range;
  constraint constr{(addr_range=="small")->(addr<8);}
endclass
module implication;
  initial begin
  packet p1;
  p1=new();
  p1.addr_range="small";
  repeat(10)begin
    p1.randomize();
    $display("addr_range=%0s,addr=%0d",p1.addr_range,p1.addr);
  end
  end
endmodule

output
addr_range=small,addr=-103
addr_range=small,addr=-71
addr_range=small,addr=-70
addr_range=small,addr=-95
addr_range=small,addr=-79
addr_range=small,addr=-14
addr_range=small,addr=-3
addr_range=small,addr=-18
addr_range=small,addr=-121
addr_range=small,addr=-4
