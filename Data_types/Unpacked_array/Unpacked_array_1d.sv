
module Unpacked_array;
  bit a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,1);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule



module Unpacked_array;
  bit [7:0]a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,127);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule

