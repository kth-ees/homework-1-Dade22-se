module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );
  initial begin
    // Initialize the input
    binary = 4'b0000;
    #10;

    // Loop through all 16 possible values for the 4-bit input
    for (int i = 0; i < 16; i++) begin
      binary = i;
      #10; // Apply each input value for 10ns
    end

    $finish;
endmodule
