// Developed By: Jeneane Amin
// Adapted by: Rhyan Johnson
//Intstantiates the modules 
module Top(
    input IN,
    input CLK, 
    input reset,
    output [3:0]digits,
    output [6:0] SEG 
);

wire [11:0]bnum;
wire [1:0]countout;
wire [15:0] BCD;
wire [3:0] LED_BCD;


SlowClock u3(
    .CLK(CLK),
    .reset(reset),
    .countout(countout)
    );
freq_counter u1(
          .CLK(CLK),
          .IN(IN),
          .freq(bnum)
);

BinaryToBCD u5(
    .bnum(bnum),
    .BCD(BCD)
);

    
Decoder u8(
    .countout(countout),
    .BCD(BCD),
    .digits(digits),
    .LED_BCD(LED_BCD)
    );
    
BCDtoSevenSeg u9(
    .LED_BCD(LED_BCD),
    .SEG(SEG)
    );
    
endmodule