 class packet;
   string a;
   int b;
   function new();
     a="apple";
     b=5;
   endfunction
   function void display();
     $display("a=%0s,b=%0d",a,b);
    
   endfunction
   function void copy(packet guru);
    this.a=guru.a;
     this.b=guru.b;
   endfunction
 endclass
module assignment;
  initial begin
  packet p1;
  packet p2;
    p1=new();
    p2=new();
    p2.copy(p1);
    p1.display();
    p2.display();
    p2.a="mango";
    p1.a="orange";
    p1.display();
    p2.display();
  end
endmodule
    
