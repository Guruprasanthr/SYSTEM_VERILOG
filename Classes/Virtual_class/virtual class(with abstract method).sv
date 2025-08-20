virtual class parent;
  string s;
  int i;
  function new();
    s="apple";
    i=5;
  endfunction
  virtual function void display();
    $display("s=%0s,i=%0d",s,i);
  endfunction
endclass
class child extends parent;
  function new();
    s="mango";
    i=4;
  endfunction
  function void display();
    $display("s=%0s,i=%0d",s,i);    
  endfunction
endclass
module example; 
  parent p;
  child c;
  initial begin
  c=new();
  p=c;
  p.display();   
 end
endmodule
    
 output:
# KERNEL: s=mango,i=4
    
