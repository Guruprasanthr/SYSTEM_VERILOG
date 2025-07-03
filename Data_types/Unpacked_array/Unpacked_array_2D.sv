module Unpacked_array;
  
  logic a[7:0][3:0];
  
  initial begin
    
    foreach(a[i,j])begin
      
      a[i][j] = $urandom_range(0,32);
      
      $display("data of a[%0d][%0d] = %0b",i,j,a[i][j]);
    end
  end
endmodule



module Unpacked_array;
  bit a[7:0][3:0];
  
  initial begin
    
    foreach(a[i,j])begin
      
      a[i][j] = $urandom_range(0,32);
      
      $display("data of a[%0d][%0d] = %0b",i,j,a[i][j]);
    end
  end
endmodule



module Unpacked_array;
  reg a[7:0][3:0];
  
  initial begin
    
    foreach(a[i,j])begin
      
      a[i][j] = $urandom_range(0,32);
      
      $display("data of a[%0d][%0d] = %0b",i,j,a[i][j]);
    end
  end
endmodule
