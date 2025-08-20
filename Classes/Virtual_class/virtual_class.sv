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
module example; 
   parent p;
  initial begin
  p=new();
  p.display();
 end
endmodule
    
    

output:
ERROR VCP2937 "Cannot instantiate abstract class: parent." "testbench.sv" 15  10
FAILURE "Compile failure 1 Errors 0 Warnings  Analysis time: 0[s]."
