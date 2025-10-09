//Does not wait — continues immediately
module frk;
  initial begin
    $display("...................");
    fork
      begin
        $display("process 1");
      #10 $display("process 2");
      end
      begin
        #15 $display("process 3");
        #20 $display("process 4");
      end
    join_none
    $display("process end");
  end
endmodule

output:
# KERNEL: ...................
# KERNEL: process end
# KERNEL: process 1
# KERNEL: process 2
# KERNEL: process 3
# KERNEL: process 4
