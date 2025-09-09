module reg_to_byte;
  reg r;
  byte b;
  initial begin
  r= 1'bx;
    $display("r=%b",r);
        $display("b=%b",b);

    b= byte'(r);
    $display("b=%d",b);
  end
endmodule

output:

# KERNEL: r=x
# KERNEL: b=00000000
# KERNEL: b=   0
