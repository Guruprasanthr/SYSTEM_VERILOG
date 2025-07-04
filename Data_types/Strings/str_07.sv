module str;
  string A=("DESIGN VERIFICATION");
  initial begin
    for(int i=0; i<19;i++)
      $display("A=%s",A[i]);
  end
endmodule

Output
A=D
A=E
A=S
A=I
A=G
A=N
A= 
A=V
A=E
A=R
A=I
A=F
A=I
A=C
A=A
A=T
A=I
A=O
A=N
