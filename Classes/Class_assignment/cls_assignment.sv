// Code your design here
class packet;
  string c;
  int d;
  
  function new();
    c="APPLE";
    d=4;
  endfunction:new
  
  function void display();
    $display("c=%0s, d=%0d",c,d);
  endfunction:display

endclass:packet

module assignment;
  packet p1;
  packet p2;

  initial begin
    p1=new();
    
    p1.display();
    p2=p1;
    
    p2.display();
    p2.c="GURU";
    p2.d=8;
    
    p1.display();
   
    p2.display();
  end

endmodule
   
