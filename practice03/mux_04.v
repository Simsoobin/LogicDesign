module   mux_tb4  ;
  
reg [3:0] in;







                        .in(in),
                        .sel(sel));
                        

                        .in(in),
                        .sel(sel));
                        

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


                                                                        