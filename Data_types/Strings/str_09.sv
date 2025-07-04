module str;
  string A="DESIGN ";
  string B="AND ";
  string C="VERIFICATION ";
  string D="ENGINEER	";
  initial begin
    $display({A,B,C,D});
  end 
endmodule


Output: DESIGN AND VERIFICATION ENGINEER
