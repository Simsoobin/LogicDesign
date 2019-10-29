module   mux_tb4  ;
  
reg [3:0] in;
reg [1:0] sel;

wire out1;
wire out2;
wire out3;

mux4_inst dut_1 (.out(out1), 
                        .in(in),
                        .sel(sel));
                        
mux4_if dut_2 (.out(out2), 
                        .in(in),
                        .sel(sel));
                        
mux4_case dut_3 (.out(out3), 
                        .in(in),
                        .sel(sel));




initial begin
  $display("===================================");
  $display("in sel out1 out2 out3");
  $display("===================================");
  
#(50) {sel,in} = 6'b000000; #(50) $display ("%d\t%d\t%d\t%d\t%d", in, sel, out1, out2, out3);
#(50) {sel,in} = 6'b000001; #(50) $display("%d\t%d\t%d\t%d\t%d", in, sel, out1, out2, out3);
#(50) {sel,in} = 6'b000100; #(50) $display("%d\t%d\t%d\t%d\t%d", in, sel, out1, out2, out3);
#(50) {sel,in} = 6'b100100; #(50) $display("%d\t%d\t%d\t%d\t%d", in, sel, out1, out2, out3);
#(50) {sel,in} = 6'b011000; #(50) $display("%d\t%d\t%d\t%d\t%d", in, sel, out1, out2, out3);
#(50) {sel,in} = 6'b001100; #(50) $display("%d\t%d\t%d\t%d\t%d", in, sel, out1, out2, out3);
$finish;

end
endmodule


                                                                        