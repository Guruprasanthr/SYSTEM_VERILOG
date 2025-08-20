virtual class parent;
  string s;
  int i;
  function new();
    s="apple";
    i=5;
  endfunction
  function void display();
    $display("s=%0s,i=%0d",s,i);
  endfunction
endclass
class child extends parent;
  bit b;
  function new();
    super.display();
    s="mango";
    i=4;
    b=0;
  endfunction
  function void display();
    $display("s=%0s,i=%0d,b=%0b",s,i,b);    
  endfunction
endclass
module example; 
   child c;
  initial begin
  c=new();
  c.display();
    c.s="banana";
    c.display();
 end
endmodule

output:
# KERNEL: s=apple,i=5
# KERNEL: s=mango,i=4,b=0
# KERNEL: s=banana,i=4,b=0
