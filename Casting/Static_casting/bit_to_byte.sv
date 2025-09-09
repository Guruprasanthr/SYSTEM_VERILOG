module bit_to_byte;
  bit [3:0]b;
  byte b1;
  initial begin
  b=4'b1100;
    $display("b=%b",b);
        $display("b1=%b",b1);

    b1= byte'(b);
    $display("b1=%d",b1);
  end
endmodule

output:
# KERNEL: b=1100
# KERNEL: b1=00000000
# KERNEL: b1=  12
