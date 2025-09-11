module csa_8 (
  input logic [7:0] a, b,
  output logic [7:0] sum,
  output logic carry
);

logic [3:0] sum0, sum1;
logic carry0, carry1_0, carry1_1; 

// Lower 4 bits adder
adder_4 adder0 (
  .A(a[3:0]),
  .B(b[3:0]),
  .sum(sum[3:0]),
  .carry(carry0)
);

// Upper 4 bits adder with carry-in 0
adder_4 adder1_cin0(
  .A(a[7:4]),
  .B(b[7:4]),
  .sum(sum0),
  .carry(carry1_0)
);

// Upper 4 bits adder with carry-in 1
adder_4 adder1_cin1(
  .A(a[7:4]),
  .B(b[7:4]),
  .sum(sum1),
  .carry(carry1_1)
);

// Select the correct sum and carry based on lower adder carry
assign sum[7:4] = carry0 ? sum1 : sum0;
assign carry = carry0 ? carry1_1 : carry1_0;

endmodule
