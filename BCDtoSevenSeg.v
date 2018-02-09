//Binary to BCD
// Developed by: Jeneane Amin
// Adapted from: http://www.fpga4student.com/2017/09/seven-segment-led-display-controller-basys3-fpga.html

// Converts BCD from frequency counter to 7Seg

module BCDtoSevenSeg(
input [3:0] LED_BCD,
output reg [6:0]SEG
);

always@(*)
begin
  case(LED_BCD)
               4'b0000: SEG = 7'b1000000; // "0"
               4'b0001: SEG = 7'b1111001; // "1"
               4'b0010: SEG = 7'b0100100; // "2"
               4'b0011: SEG = 7'b0110000; // "3"
               4'b0100: SEG = 7'b0011001; // "4"
               4'b0101: SEG = 7'b0010010; // "5"
               4'b0110: SEG = 7'b0000010; // "6"
               4'b0111: SEG = 7'b1111000; // "7"
               4'b1000: SEG = 7'b0000000; // "8"
               4'b1001: SEG = 7'b0011000; // "9"
               default: SEG = 7'b1000000; // "0"
  endcase
end
endmodule
