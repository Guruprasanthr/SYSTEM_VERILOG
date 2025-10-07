class encapsulation;
  int a;
  int b;
  int c;
  function new();
    a=2;
    b=4;
    c=5;
  endfunction
  function void display();
        $display("......a=%0d,b=%0d,c=%0d",a,b,c);
  endfunction
endclass
class encap extends encapsulation;
   function void display();
        $display("......a=%0d,b=%0d,c=%0d",a,b,c);
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

def:
By default if we does not define any attributes with keywords 'local' and 'protected', then by default it is 'public'.
It provides full access to all attributes and methods to child classes.
output:
# KERNEL: ......a=2,b=4,c=5
# KERNEL: ......a=2,b=4,c=5
