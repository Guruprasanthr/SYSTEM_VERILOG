class home;
  int light;
  string sw;
  
  task task1;
    light = 1;
    sw	  = "ON" ;
    
    $display("The switch is %s ,so the light %0d",sw,light);
  endtask
endclass

module test;
  initial begin
  home a;
    a=new();
    a.task1();
  if(a == null)
    $display("EMPTY");
  else
    $display("NOT EMPTY");
    
  end
  
endmodule


output:
The switch is ON ,so the light 1
NOT EMPTY
