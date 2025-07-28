module structure;
  struct {
    byte   a;
    int    b;
    string c;
  } numbers;

  initial begin
    numbers = '{75, 3086, "GURU"};
    
    $display("a = %0b", numbers.a);     
    $display("b = %0b", numbers.b);     
    $display("c = %s", numbers.c);      
  end
endmodule
