module packed_array;
  logic [31:0]a;
  
  initial begin
    a = 32'habcd_abcd ;
    
    foreach(a[i])begin
      $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule


module packed_array;
  reg [31:0]a;
  
  initial begin
    a = 32'habcd_abcd ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule




module packed_array;
  bit [31:0]a;
  
  initial begin
    a = 32'habcd_abcd ;
    
    foreach(a[i])begin
         $display("data of a[%0d] = %0b",i,a[i]);
    end
  end
endmodule
