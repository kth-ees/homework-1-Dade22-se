module bin2gray_tb;

  // Inputs
  logic [3:0] binary;

  // Outputs
  logic [3:0] gray;

  // Instantiate the device under test
  bin2gray dut (.binary(binary), .gray(gray));

  initial begin
    for( int i=0 ; i<16; i++) begin 
      binary = i;
      #10;

      $display("Binary: %b, Gray: %b", binary, gray);
    end
  end

  // complete
endmodule
