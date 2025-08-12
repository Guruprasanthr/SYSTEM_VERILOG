module queue_example;
  int data[$]; 
  
  initial begin
    data = '{1, 2, 3, 4, 5, 6};
    $display("The array is: %p", data);
    
    data.insert(3, 1);
    $display("The array is: %p", data);
    
    data.push_front(99);
    $display("The array is: %p", data);
    
    data.delete(3);
    $display("The array is: %p", data);
    
    data.pop_front();
    $display("The array is: %p", data);
    
    data.pop_back();
    $display("The array is: %p", data);
    
    $display("Size of array: %d", data.size());
  end
endmodule



output
The array is: '{1, 2, 3, 4, 5, 6}
The array is: '{1, 2, 3, 1, 4, 5, 6}
The array is: '{99, 1, 2, 3, 1, 4, 5, 6}
The array is: '{99, 1, 2, 1, 4, 5, 6}
The array is: '{1, 2, 1, 4, 5, 6}
The array is: '{1, 2, 1, 4, 5}
Size of array:           5
