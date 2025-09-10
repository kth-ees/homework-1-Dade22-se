module bin2bcd_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [3:0] bcd;
  logic carry;

  // Instantiate the DUT (Device Under Test)
  bin2bcd dut (
    .binary(binary),
    .bcd(bcd),
    .carry(carry)
  );

  // Test procedure
  for (int i=0; i<10; i++) begin
    binary = $urandom_range(0, 15); // Random binary input from 0 to 15
    #10; // Wait for 10 time units
    $display("Binary: %b, BCD: %b, Carry: %b", binary, bcd, carry);
  end

endmodule
