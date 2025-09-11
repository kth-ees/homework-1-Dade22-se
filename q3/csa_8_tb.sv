module csa_8_tb;

  // Inputs
  logic [7:0] a;
  logic [7:0] b;
  logic [7:0] sum;
  logic carry;

  // complete the testbench
  csa_8 uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    a = 8'b00001111; // 15
    b = 8'b00000001; // 1
    #10;
    $display("Test Case 1: a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);
    
    a = 8'b11110000; // 240
    b = 8'b00001111; // 15
    #10;
    $display("Test Case 2: a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);
    
    a = 8'b11111111; // 255
    b = 8'b00000001; // 1
    #10;
    $display("Test Case 3: a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);
    
    a = 8'b10101010; // 170
    b = 8'b01010101; // 85
    #10;
    $display("Test Case 4: a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);
    
    a = 8'b11111111; // 255
    b = 8'b11111111; // 255
    #10;
    $display("Test Case 5: a=%b, b=%b => sum=%b, carry=%b", a, b, sum, carry);
    
    $finish;
  end
  

endmodule
