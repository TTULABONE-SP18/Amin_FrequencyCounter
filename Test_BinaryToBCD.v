// Developed by: Jeneane Amin
// Adapted by: Rhyan Johnson
module TEST_binary_to_BCD;

	// Inputs
	reg [32:0] bnum;

	// Outputs
	wire [3:0] tens;
	wire [3:0] ones;

	// Instantiate the Unit Under Test (UUT)
	BinaryToBCD uut (
		.bnum(bnum), 
		.tens(tens), 
		.ones(ones),
        .hundreds(hundreds)
	);

	initial begin
		// Initialize Inputs
		bnum = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		#10 bnum = 43;
		
		#10 bnum = 21;
		
		#10 bnum = 30;
		
		#100;

	end
      
endmodule
