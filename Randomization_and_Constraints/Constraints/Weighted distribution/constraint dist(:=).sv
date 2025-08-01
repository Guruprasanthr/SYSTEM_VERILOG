class packet;
  rand byte addr;
  constraint weighted {addr dist {2:=3,[10:15]:=4};}
endclass
module weigh;
  initial begin
  packet p1;
  p1=new();
  repeat(15)begin
    p1.randomize();
    $display("addr=%0d",p1.addr);
  end
  end
endmodule

output 

addr=10
addr=11
addr=13
addr=14
addr=10
addr=15
addr=11
addr=13
addr=14
addr=12
addr=10
addr=11
addr=13
addr=15
addr=12
