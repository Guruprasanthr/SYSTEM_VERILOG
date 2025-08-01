class packet;
  rand byte addr;
  string addr_range;
  constraint constr{(addr_range=="small")->(addr<8);}
endclass
module implication;
  initial begin
  packet p1;
  p1=new();
  p1.addr_range="big";
  repeat(10)begin
    p1.randomize();
    $display("addr_range=%0s,addr=%0d",p1.addr_range,p1.addr);
  end
  end
endmodule

output
addr_range=big,addr=25
addr_range=big,addr=-113
addr_range=big,addr=-37
addr_range=big,addr=-54
addr_range=big,addr=-28
addr_range=big,addr=-103
addr_range=big,addr=-42
addr_range=big,addr=110
addr_range=big,addr=7
addr_range=big,addr=-48
