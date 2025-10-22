module conditional;
 bit [3:0]a;   
    initial begin  
     a=10;  
     $display ("Value of a = %0d",a);  
       if (a==10)begin  
         $display ("if the expression is true, Successfully entered into the if block"); 
         $display ( "a is equal to 10 " );  
       end  
     $display("out of if block");  
    end  
endmodule

output:
# KERNEL: Value of a = 10
# KERNEL: if the expression is true, Successfully entered into the if block
# KERNEL: a is equal to 10 
# KERNEL: out of if block
