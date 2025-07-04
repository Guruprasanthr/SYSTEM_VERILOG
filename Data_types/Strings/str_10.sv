module str;
  string A="DESIGN ";
  string B="AND ";
  string C="VERFICATION ";
  string D="ENGINEER ";
  initial begin
    $display({4{A}},B,C,D);end
              endmodule

output: DESIGN DESIGN DESIGN DESIGN AND VERIFICATION ENGINEER
