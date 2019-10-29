module   mux_tb4  ;

reg  in0;
reg  in1;
reg  in2;
reg  in3;
reg  sel;

wire out1;
wire out2;
wire out3;


mux4to1_inst dut_1 (    .out(out1), 
                        .in0(in0), 
                        .in1(in1),
                        .sel(sel));
mux4to1_if dut_2 (    .out(out2), 
                        .in0(in0), 
                        .in1(in1),
                        .sel(sel));
mux4to1_case dut_3 (    .out(out3), 
                        .in0(in0), 
                        .in1(in1),
                        .sel(sel));
                        
initial begin
    $display("Using cond dut_1 : out1");
    $display("Using if   dut_2 : out2");         
    $display("Using case dut_3 : out3"); 
    $display("==========================================================");                    
    $display("sel in1 in0 out1 out2 out3"); 
    $display("=========================================================="); 
    #(50)   {sel, in1, in0} = 3'b000; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b001; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b010; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b011; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b100; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b101; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b110; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
    #(50)   {sel, in1, in0} = 3'b111; #(50) $display("   %d\t%d\t%d\t%d\t%d\t%d", sel, in1, in0, out1, out2, out3); 
   #(50)  $finish;
  end
  
endmodule
  