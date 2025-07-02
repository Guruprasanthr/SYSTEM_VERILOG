module packed_array;
  logic [3:0][7:0]a;
  
 initial begin
   a= 32'hffff_eacd ;
  foreach(a[i,j])begin
    $display("a[%0d][%0d]= %d",i,j,a[i][j]);
  end
 end
endmodule



module packed_array;
  reg [3:0][7:0]a;
  
 initial begin
   a= 32'hffff_eacd ;
  foreach(a[i,j])begin
    $display("a[%0d][%0d]= %d",i,j,a[i][j]);
  end
 end
endmodule


module packed_array;
  bit [3:0][7:0]a;
  
 initial begin
   a= 32'hffff_eacd ;
  foreach(a[i,j])begin
    $display("a[%0d][%0d]= %d",i,j,a[i][j]);
  end
 end
endmodule
