module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

   // Instantiate the dut
   count_1 dut ( .a(a) , .out(out) );

   initial begin
      for (int i = 0; i < 10; i++) begin
         a = $urandom_range(0, 15);
         #10;
      end
      $finish;
   end

endmodule
