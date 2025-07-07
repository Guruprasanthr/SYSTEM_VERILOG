module associative_array;
  int a[int];
  string b[string];
  
  initial begin
    a = '{1:100 ,2:200 ,3:300 ,4:400 };
    b = '{"Red":"Stop" , "Yellow":"Ready" , "Green":"Go"};
    
    foreach(a[i])begin
      $display("a[%0d] = [%0d]",i,a[i]);
    end
    
    foreach(b[colour])begin
      $display("b[%s] = [%s]",colour,b[colour]);
    end
  end
endmodule
