module dynamic_array;
  int arr[] ;
  
 initial begin
  arr = new[10] ;  
  arr = {1,2,3,4,5,6,7,8,9,10} ;
   
   foreach(arr[i])begin
     $display("arr[%0d]=%0d",i,arr[i]);
   end
   end
  endmodule

