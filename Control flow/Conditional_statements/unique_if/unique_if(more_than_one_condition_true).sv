module cond;
     bit [3:0] a;  
     initial begin  
       a = 12;  
       $display ("The value of a = %0d", a);  
       unique if (a==12)begin
         $display("equal");
       end
       else if(a>10)begin
         $display("greater");
       end
       else begin
         $display("less than");
       end
     end  
endmodule

output:
# KERNEL: The value of a = 12
# KERNEL: equal
# ASSERT: Error: Assertion 'unique_if_1' FAILED at time: 0, testbench.sv(6), scope: cond. Two or more conditions are true simultaneously: a==12 (line: 6), a>10. (line: 9)
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
Done
