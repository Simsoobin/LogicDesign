module d_tb;
  
wire [7:0]   output1    ;
wire [7:0]   output2    ;

reg  [2:0]   in         ;
reg     en         ;

//--------------------------------------
// Instances
//--------------------------------------
dec3to8_shift  dut0(    .out     ( output1     ),
                        .in      (     in      ),
                        .en      (   en        ));
                  
                  
dec3to8_case   dut1(    .out     (  output2    ),
                        .in      (    in       ),
                        .en      (      en     ));
                  

//--------------------------------------
// Stimulus
//--------------------------------------
initial begin
$display("======================================");
$display("  in en output1 output2");
$display("======================================");
#(0)    {en, in} = 4'b0000;
#(50)   {en, in} = 4'b0000; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);  
#(50)   {en, in} = 4'b0001; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b0010; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b0011; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b0100; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b0101; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b0110; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b0111; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1000; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1001; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1010; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1011; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1100; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1101; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1110; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);
#(50)   {en, in} = 4'b1111; #(50)   $display("  %b\t%b\t%b\t%b", in, en, output1, output2);

$finish;
end

endmodule