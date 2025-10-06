module dynamic_casting;
  real a;
  int b;
  initial begin
    a=9.25;
    $display(" a=%r", a);
    if ($cast(b, a)) begin   
      $display("b=%d", b);

    end else begin
      $display("Cast failed");
    end
  end
endmodule

Output:
# KERNEL:  a=9.25
# KERNEL: b=          9
