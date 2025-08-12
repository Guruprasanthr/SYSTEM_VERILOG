module union_packed;
  union packed {
    int  addr;   
    int data;   
  } closed;

  initial begin
    closed.addr = 32'hED;          
    closed.data = 32'hAA;      
    $display("closed.addr = %0h ", closed.addr);
    $display("closed.data = %0h ", closed.data);
  end
endmodule


output
# KERNEL: closed.addr = aa 
# KERNEL: closed.data = aa 
