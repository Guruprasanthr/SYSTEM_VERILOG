 class parent;
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
class child1 extends parent;
  function new();
    s="mango";
    i=4;
  endfunction
  function void display();
    $display("s=%0s,i=%0d",s,i);    
  endfunction
endclass


class child2 extends parent;
  function new();
    s="orange";
    i=3;
  endfunction
  function void display();
    $display("s=%0s,i=%0d",s,i);    
  endfunction
endclass


class child3 extends parent;
  function new();
    s="guava";
    i=2;
  endfunction
  function void display();
    $display("s=%0s,i=%0d",s,i);    
  endfunction
endclass


module example; 
 
  initial begin
    parent p1,p2,p3;
    child1 c1=new();
    child2 c2=new();
    child3 c3=new();
    p1=c1;
    p2=c2;
    p3=c3;
    p1.display(); 
    p2.display(); 
    p3.display(); 
 end
endmodule

output:
s=mango,i=4
s=orange,i=3
s=guava,i=2
