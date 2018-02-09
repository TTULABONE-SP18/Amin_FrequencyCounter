//Test_BCDtoSevenSeg
// Developed by: Jeneane Amin
//Adapted by: Rhyan Johnson
//Tests BCDtoSevenSeg.v

module Test_BCDtoSevenSeg();

//Inputs
reg [3:0] BCD;

//Outputs
wire [6:0] SEG;


//Instantiate
BCDtoSevenSeg uut(
    .BCD(BCD),
    .SEG(SEG)
);

//begin test
initial begin
  #100
  BCD = 4'd1;
#10 BCD = 4'd3;
#10 BCD = 4'd6;
#10 BCD = 4'd9;

end
endmodule
