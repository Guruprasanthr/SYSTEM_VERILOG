// Code your design here
class packet;
  string c;
  int d;
  function new();
    c="GURU";
    d=8;
  endfunction
  function void display();
    $display("c=%0s,d=%0d",c,d);
  endfunction
endclass

module shallow;
  packet p1;
  packet p2;
  
  initial begin
    p1=new();
    p1.display();
    p2=new p1;
    p2.display();
    p2.c="PRASANTH";
    p1.display();
    p2.display();
  end
endmodule
