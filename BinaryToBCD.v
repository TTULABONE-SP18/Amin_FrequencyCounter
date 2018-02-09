`timescale 1ns / 1ps

// Developed By: Jeneane Amin
// Adapted From: http://www.deathbylogic.com/2013/12/bnum-to-bnum-coded-decimal-bcd-converter/
//Using double dabble method with smallest input necessary
module BinaryToBCD(

     // I/O Signal Definitions

     input  [11:0] bnum,
     output reg [15:0] BCD
     
);
 
reg [3:0] thousands;
reg [3:0] hundreds;
reg [3:0] tens;
reg [3:0] ones;
reg [27:0] shift;

integer i;
//Start
     always @(bnum)
     begin
          thousands = 4'b0;
          hundreds = 4'b0;
          tens = 4'b0;
          ones = 4'b0;

          shift = 0;
          shift[11:0] = bnum;
          
          // Loop 12 times
          for (i = 0; i < 12; i = i + 1)
          begin
               if (shift[15:12] >= 5)
                    shift[15:12] = shift[15:12] + 3;

               if (shift[19:16] >= 5)
                    shift[19:16] = shift[19:16] + 3;

               if (shift[23:20] >= 5)
                    shift[23:20] = shift[23:20] + 3;

               if (shift[27:24] >= 5)
                    shift[27:24] = shift[27:24] + 3;

               shift = shift << 1;

          end

          // Output each place value
          thousands = shift[27:24];
          hundreds  = shift[23:20];
          tens      = shift[19:16];
          ones      = shift[15:12];
          BCD = {thousands,hundreds,tens,ones};
     end

endmodule