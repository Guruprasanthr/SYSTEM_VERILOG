class static_example;
  byte a;          // non-static (instance variable)
  static byte b;   // static (shared by all objects)

  function new();  // constructor, called each time you create new object
    a++;           // increments this object's "a"
    b++;           // increments the shared "b"
    $display("a=%0d, b=%0d", a, b);
  endfunction
endclass

module stat;
  initial begin
    static_example s[4];     // array of 4 object handles
    foreach(s[i]) begin
      s[i] = new();          // constructor called 4 times
    end
  end
endmodule

output:
a=1, b=1
a=1, b=2
a=1, b=3
a=1, b=4
