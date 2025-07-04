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
    A.putc(5,"A");
    $display("A=%s",A);
  end
endmodule


Output: A = GURUPAASANTH



