module packed_array;
  bit [7:0][3:0][1:0]a;
  
  initial begin
    a = 64'habcd_abcd_dcba_dcba ;
    
    foreach(a[i,j,k])begin
      $display("data of a[%0d][%0d][%0d] = %0b",i,j,k,a[i][j][k]);
    end
  end
endmodule



module packed_array;
  reg [7:0][3:0][1:0]a;
  
  initial begin
    a = 64'habcd_abcd_dcba_dcba ;
    
    foreach(a[i,j,k])begin
      $display("data of a[%0d][%0d][%0d] = %0b",i,j,k,a[i][j][k]);
    end
  end
endmodule




module packed_array;
  logic [7:0][3:0][1:0]a;
  
  initial begin
    a = 64'habcd_abcd_dcba_dcba ;
    
    foreach(a[i,j,k])begin
      $display("data of a[%0d][%0d][%0d] = %0b",i,j,k,a[i][j][k]);
    end
  end
endmodule
