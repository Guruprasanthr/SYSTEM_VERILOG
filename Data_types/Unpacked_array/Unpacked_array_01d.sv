module Unpacked_array;
  byte a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,127);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule



module Unpacked_array;
  int a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,127);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule


module Unpacked_array;
  shortint a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,127);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule



module Unpacked_array;
  longint a[7:0];
  
  initial begin
    
    foreach(a[i])begin
      
      a[i] = $urandom_range(0,127);
      
      $display("data of a[%0d] = %b",i,a[i]);
    end
  end
endmodule
