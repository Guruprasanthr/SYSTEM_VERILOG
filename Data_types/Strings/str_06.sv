module str_09;
  string A="DESIGN";
  string B="DESIG";
  initial begin
    if(A==B) 
      $display("A is equal to B");
    else
      $display("A is not equal to B ");
  end
endmodule


Output: A is not equal to B
