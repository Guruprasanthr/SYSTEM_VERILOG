module dynamic_array;
  int dyn_array[];
  initial begin
    $display ("default size 0f dyn_array=%0d",dyn_array.size());
    dyn_array=new[4];
    dyn_array='{1,2,3,4};
    $display ("updated size 0f dyn_array=%0d",dyn_array.size());
    foreach(dyn_array[i])begin
      $display ("Elements in dyn_array[%0d]=%0d",i,dyn_array[i]);
      
    end
  end
endmodule
