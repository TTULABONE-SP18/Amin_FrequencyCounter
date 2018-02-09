//Decoder
//Developed by: Jeneane Amin
//Decoder to set the placement of the 7 segment display

module Decoder(
    input [1:0]countout,
    input [15:0]BCD,
    output reg [3:0]digits,
    output reg [3:0]LED_BCD
);

 always @(*)
 
     begin
          case(countout)
               2'b00: begin
                    digits = 4'b0111;
                    LED_BCD = BCD[15:12];
               end
               2'b01: begin
                    digits = 4'b1011;
                    LED_BCD = BCD[11:8];
               end
               2'b10: begin
                    digits = 4'b1101;                 
                    LED_BCD = BCD[7:4];
               end
               2'b11: begin
                    digits = 4'b1110;
                    LED_BCD = BCD[3:0];
               end
          endcase
     end
endmodule