module bin2gray (
  input logic [3:0] binary,
  output logic [3:0] gray
);

  //Gray codification from a binary input
  assign gray = binary ^ (binary >> 1);


endmodule
