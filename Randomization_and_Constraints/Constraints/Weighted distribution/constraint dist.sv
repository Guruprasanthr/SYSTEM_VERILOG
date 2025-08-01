class packet;
  rand byte addr;
  rand byte addr1;
  constraint range1{addr dist{2:=8,[5:10]:=6};}
  constraint range2{addr1 dist{2:/8,[5:10]:/6};}
endclass
module constr;
  initial begin
  packet p1;
  packet p2;
  p1=new();
  p2=new();
    repeat(10)begin
    p1.randomize();
    $display("addr=%0d",p1.addr);
    end
    $display("------------------------");
    repeat(10)begin
      p2.randomize();
      $display("addr1=%0d",p2.addr1);
    end
  end
endmodule

output 
addr=8
addr=10
addr=8
addr=8
addr=5
addr=2
addr=8
addr=10
addr=6
addr=6
------------------------
addr1=2
addr1=2
addr1=9
addr1=2
addr1=5
addr1=2
addr1=2
addr1=9
addr1=10
addr1=2
