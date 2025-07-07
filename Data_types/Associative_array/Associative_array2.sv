module associative_array;
  string a[string];
  string result;
  
  initial begin
    a = '{"Red":"Stop" , "Yellow":"Ready" , "Green":"Go"};
    $display("a : %p", a);
    
    foreach(a[i]) begin
      $display("a[%0s] = %0s", i, a[i]);
    end
   
    $display("Number of elements in array : %0d", a.num());
 
    $display("Size of the array : %0d", a.size());
  
    a.delete("Yellow");
    $display("After deleting, the array is: %p", a);
    
    if (a.exists("Red")) begin
      $display("The index exists");
    end
    else begin
      $display("The index does not exist");
    end
   
    if (a.first(result))
      $display("The first element key = %0s", result);
    
    if (a.next(result))
      $display("The next element key = %0s", result);

    if (a.last(result))
      $display("The last element key = %0s", result);
  
    if (a.prev(result))
      $display("The previous element key = %0s", result);
  end
endmodule
