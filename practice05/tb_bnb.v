module  tb_blocking;
  
reg             d;
reg             clk;

wire           out0;
wire           out1;

initial         clk = 1'b0;
always  #(100)  clk = ~clk;

block       dut0   (      .q   ( out0), 
                          .d   ( d), 
                          .clk ( clk));
nonblock    dut1   (      .q   (out1 ), 
                          .d   (d ), 
                          .clk (clk )); 
                          
initial begin
$display("===========================================");
$display(" d output0 output1 ");
$display("===========================================");
#(0)      {d} = 1'b0;
#(50)     {d} = 1'b0; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b1; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b1; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b1; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b0; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b1; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b0; #(50)     $display("%b\t%b\t%b", d, out0, out1);
#(50)     {d} = 1'b0; #(50)     $display("%b\t%b\t%b", d, out0, out1);

$finish;
end

endmodule