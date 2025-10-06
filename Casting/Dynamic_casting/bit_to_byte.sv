module dynamic_casting;
  bit [1:0] b; 
  byte a;
  initial begin
    b = 2'b11;
    $display("b=%b", b);

    if ($cast(a, b)) begin   
      $display("Cast successful: a=%b", a);
    end else begin
      $display("Cast failed");
    end
  end
endmodule
