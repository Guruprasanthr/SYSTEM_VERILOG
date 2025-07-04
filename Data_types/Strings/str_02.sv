module str;
  string A= "GURUPRASANTH";
  initial begin
    $display("A=%s",A.tolower());
  end
endmodule


Output: A = guruprasanth


module str;
  string A= "guruprasanth";
  initial begin
    $display("A=%s",A.toupper());
  end
endmodule

Output: A = GURUPRASANTH
