module multi_dim_array;
  logic [3:0][1:0]a[7:0][3:0];
  
  initial begin
    
    foreach(a[i,j,k,l])begin
      
      a[i][j][k][l] = $urandom_range(0,256);
      
      $display("data of a[%0d][%0d][%0d][%0d] = %b",i,j,k,l,a[i][j][k][l]);
    end
  end
endmodule
