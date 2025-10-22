module conditional;
 bit [3:0]a;
 bit [3:0]b;   

    initial begin  
     a=13; 
      b=13;
      if (a==b)begin  
        $display ( "a is  equal to b " );  
       end  
      else if(a<b)begin
        $display("a is less than b");  
    end  
      else begin
      $display("a is greater than b");
      end
    end
    
endmodule

output:
# KERNEL: a is  equal to b 
