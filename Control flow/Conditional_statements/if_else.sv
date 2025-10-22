module conditional;
 bit [3:0]a;   
    initial begin  
     a=11;  
     $display ("Value of a = %0d",a);  
       if (a==10)begin  
         $display ( "a is equal to 10 " );  
       end  
      else
        $display("a is not equal to 10");  
    end  
endmodule

output:
# KERNEL: Value of a = 11
# KERNEL: a is not equal to 10
