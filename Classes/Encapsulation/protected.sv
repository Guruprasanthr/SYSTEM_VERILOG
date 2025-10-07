class encapsulation;
  protected int a;
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
Sometimes there will be necessity to access the members of parent class by the child class. 
This can be done by the keyword 'protected'.
By using protected, all the child classes will get the access to the base class members which were data protected.


output:
# KERNEL: ......a=2,b=4,c=5
# KERNEL: ......a=2,b=4,c=5
