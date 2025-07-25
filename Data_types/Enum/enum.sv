module tb;

  typedef enum {YELLOW, GREEN, RED, BLUE} color_set_1_t;
  typedef enum {ORANGE=2, WHITE=7, GREY, BLACK} color_set_2_t;
  typedef enum {PINK[4]} color_set_3_t;
  typedef enum {NAVY0=5, NAVY1, NAVY2, NAVY3} color_set_4_t;
  typedef enum {WHITE3=4, WHITE4, WHITE5} color_set_6_t;

  // Variables of enum types
  color_set_1_t color1;
  color_set_2_t color2;
  color_set_3_t color3;
  color_set_4_t color4;
  color_set_4_t color5;
  color_set_6_t color6;

  initial begin
    // Assign values
    color1 = YELLOW;
    color2 = WHITE;
    color3 = PINK3;
    color4 = NAVY1;
    color5 = NAVY3;
    color6 = WHITE4;

    $display ("color_set_1 = %0d, name = %s", color1, color1.name());
    $display ("color_set_2 = %0d, name = %s", color2, color2.name());
    $display ("color_set_3 = %0d, name = %s", color3, color3.name());
    $display ("color_set_4 = %0d, name = %s", color4, color4.name());
    $display ("color_set_5 = %0d, name = %s", color5, color5.name());
    $display ("color_set_6 = %0d, name = %s", color6, color6.name());
  end

endmodule
