class encapsulation;
  int a;
  local int b;
  local int c;
  function new();
    a=2;
    b=4;
    c=5;
  endfunction
  function void display();
        $display(".............a=%0d,b=%0d,c=%0d",a,b,c);
  endfunction
endclass
class encap extends encapsulation;
   function void display();
    $display("a=%d",a);
  endfunction
endclass
  module en;
    encapsulation e0;
    encap e1;
    initial begin
      e0=new();
      e1=new();
      e0.display();
      e1.display();
    end
  endmodule


output
# KERNEL: .............a=2,b=4,c=5
# KERNEL: a=2
