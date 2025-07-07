module dynamic_array;
  int arr_0[];
  int arr_1[];

  initial begin
    arr_0 = new[10];
    arr_0 = '{1,2,3,4,5,6,7,8,9,10};
    arr_1 = new[10](arr_0); 
    foreach (arr_1[i]) begin
      $display("arr_1[%0d] = %0d", i, arr_1[i]);
    end

    $display("Size of the array = %0d", arr_1.size());
    arr_1 = new[7];
    foreach (arr_1[i]) begin
      $display("arr_1[%0d] = %0d", i, arr_1[i]);
    end

    $display("Size of the resized array = %0d", arr_1.size());
    $display("Contents of the array = %p", arr_1);
    arr_1.delete();
    $display("After deleting, the array = %p", arr_1);
  end
endmodule
