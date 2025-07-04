module str;
  string A= "GURUPRASANTH";
  initial begin
    $display("A=%s",A.getc(5));
  end
endmodule


Output: A = R


module str;
  string A= "GURUPRASANTH";
  initial begin
    $display("A=%s",A.putc(5,"A"));
  end
endmodule


Output: A = GURUPAASANTH



