module structure;
  struct {
    string name;
    byte a;
    logic [3:0]b;}numbers;
  
  initial begin
    
    numbers = '{"Guru",77,7};
    
    $display("The array is : %p",numbers);
    $display("The name is : %0s ",numbers.name);
    $display("Data a is : %0b",numbers.a);
    $display("Data b is : %0b",numbers.b);
  end
endmodule
