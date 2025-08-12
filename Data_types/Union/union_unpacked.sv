module union_unpacked;
  union {
    int  addr;   
    byte data;   
  } closed;

  initial begin
    closed.addr = 32'hEDFFAA;
    $display("closed.addr = %0h ", closed.addr);

    closed.data = 8'hCC;      
    $display("closed.addr = %0h ", closed.addr);
    $display("closed.data = %0h ", closed.data);
  end
endmodule

Output
closed.addr = edffaa 
closed.addr = ffffffcc 
closed.data = cc 
