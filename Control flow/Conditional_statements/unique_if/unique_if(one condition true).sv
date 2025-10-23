module cond;
     bit [3:0] a;  
     initial begin  
       a = 12;  
       $display ("The value of a = %0d", a);  
       unique if (a==12)begin
         $display("equal");
       end
       else if(a>20)begin
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
