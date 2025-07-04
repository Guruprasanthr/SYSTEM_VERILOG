module str_09;
  string A="DESIGN";
  string B="VERIFICATION";
  initial begin
    if(A>B) 
      $display("A is greater than B");
    else
      $display("A is less than B ");
  end
endmodule


Output:
A is less than B
