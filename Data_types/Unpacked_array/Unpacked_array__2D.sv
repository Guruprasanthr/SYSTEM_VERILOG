module Unpacked_array;
  byte a[7:0][3:0];
  
  initial begin
    
    foreach(a[i,j])begin
      
      a[i][j] = $urandom_range(0,256);
      
      $display("data of a[%0d][%0d] = %b",i,j,a[i][j]);
    end
  end
endmodule
