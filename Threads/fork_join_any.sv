//Waits for first to finish
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
    join_any
    $display("process 2 end");
  end
endmodule


output:
# KERNEL: process 1
# KERNEL: process 2
# KERNEL: process 2 end
# KERNEL: process 3
# KERNEL: process 4
