 class packet;
   string a;
   int b;
   function new();
     a="apple";
     b=5;
   endfunction
   function display();
     $display("a=%0s,b=%0d",a,b);
   endfunction
 endclass
module assignment;
  initial begin
  packet p1;
  packet p2;
  
    p1=new();
    p1.display();
  end
endmodule
    
