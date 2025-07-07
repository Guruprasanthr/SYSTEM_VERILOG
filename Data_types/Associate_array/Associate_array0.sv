module associative_array;
  string a[string];
  
  initial begin
    a = '{"Red":"Stop" , "Yellow":"Ready" , "Green":"Go"};
    $display("a =%p: ",a);
  end
endmodule

Output:
a : '{"Green":"Go", "Red":"Stop", "Yellow":"Ready"}
