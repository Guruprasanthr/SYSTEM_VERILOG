class main;
  string a;
  int b;
  function new();
    a="APPLE";
    b=7;
  endfunction
  function void display();
    $display("a=%0s,b=%0d",a,b);
  endfunction
endclass

class sub extends main;
  string d;
  int c;
  function new();
    //super.declare();
    d=a;
    c=b;
  endfunction
  function void display();
    $display("a=%0s, b=%0d ,d=%0s,c=%0d",a,b,d,c);
  endfunction 
 endclass
             
module hars;
  main p1;
  sub p2;
  initial begin
  p1=new();
  p2=new();
//   p1.declare();
//   p2.declare();
//   p2.declar();
  p1.display();
  p2.display();
  end
endmodule
  
  
  
  
  
