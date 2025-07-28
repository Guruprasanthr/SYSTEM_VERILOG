module structure_packed;
  
  struct packed{ 
    int num;
    byte a;
    logic [3:0]b;}numbers;
  
  initial begin
    
    numbers = '{4096,125,15};
    
    $display("The array is : %p",numbers);
    $display("Data num is : %0d",numbers.num);
    $display("Data a is : %0b",numbers.a);
    $display("Data b is : %0b",numbers.b);
  end
endmodule
