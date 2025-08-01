class packet;
  randc bit[2:0] a;
  constraint addr{!(a inside{[5:10]});}
  endclass
    
    module cons_file;
      initial begin
        packet p1;
        p1=new();
        repeat(2)begin
          p1.randomize();
          $display("a=%0d",p1.a);
        end
      end
    endmodule

output 
a=3
a=2
