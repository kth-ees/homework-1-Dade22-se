module bin2bcd (
  input logic [3:0] binary,
  output logic [3:0] bcd,
  output logic carry
);

always_comb begin
  
  bcd = 4'b0000;
  carry = 1'b0;

  case (binary)
    4'b0000: bcd = 4'b0000;// 0
    4'b0001: bcd = 4'b0001; // 1
    4'b0010: bcd = 4'b0010; // 2
    4'b0011: bcd = 4'b0011; // 3
    4'b0100: bcd = 4'b0100; // 4
    4'b0101: bcd = 4'b0101; // 5
    4'b0110: bcd = 4'b0110; // 6
    4'b0111: bcd = 4'b0111; // 7
    4'b1000: bcd = 4'b1000; // 8
    4'b1001: bcd = 4'b1001; // 9
    4'b1010: begin bcd = 4'b0000; carry = 1'b1; end// 10 -> 0 with carry
    4'b1011: begin bcd = 4'b0001; carry = 1'b1; end// 11 -> 1 with carry
    4'b1100: begin bcd = 4'b0010; carry = 1'b1; end// 12 -> 2 with carry
    4'b1101: begin bcd = 4'b0011; carry = 1'b1; end// 13 -> 3 with carry
    4'b1110: begin bcd = 4'b0100; carry = 1'b1; end// 14 -> 4 with carry
    4'b1111: begin bcd = 4'b0101; carry = 1'b1; end// 15 -> 5 with carry
    default: begin
      bcd = 4'b0000;
      carry = 1'b0;
    end
end

endmodule
