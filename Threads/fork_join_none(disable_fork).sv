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
disable fork;
    $display("process end");
  end
endmodule

  output:
  # KERNEL: ...................
# KERNEL: process end
