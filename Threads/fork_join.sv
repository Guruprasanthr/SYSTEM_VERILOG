//Waits for all threads
module frk;
  initial begin
    $display("...................");
    fork
      begin
        #5 $display("process 1");
      #10 $display("process 2");
      end
      begin
        $display("process 3");
        #20 $display("process 4");
      end
    join
    $display("process end");
  end
endmodule

output:
# KERNEL: ...................
# KERNEL: process 3
# KERNEL: process 1
# KERNEL: process 2
# KERNEL: process 4
# KERNEL: process end
