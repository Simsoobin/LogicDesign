module mux4to1_inst(    out, 
                        in0, 
                        in1,
                        in2,
                        in3,
                        sel);
  
output         out               ;
input          in0               ;
input          in1               ;
input          in2               ;
input          in3               ;
input [3:0]    in                ;
input [1:0]    sel               ;

assign  out  =  (sel==1'b0)? in0 : in1 ;

endmodule

module mux2to1_if(      out, 
                        in0, 
                        in1,
                        sel);
                        
output         out               ;
input          in0               ;
input          in1               ;
input          in2               ;
input          in3               ;
input          sel               ;
reg out;

always @(*) begin
    if(sel == 1'b0) begin
        out = in0   ;
    end else begin
        out = in1   ;
      end
end
endmodule



module mux2to1_case(    out, 
                        in0, 
                        in1,
                        sel);
output         out               ;
input          in0               ;
input          in1               ;
input          sel               ;

reg            out               ;
always @(*) begin
      case({sel, in1, in0})
            3'b000 : {out} = 1'b0 ;
            3'b001 : {out} = 1'b1;
            3'b010 : {out} = 1'b0;
            3'b011 : {out} = 1'b1;
            3'b100 : {out} = 1'b0;
            3'b101 : {out} = 1'b0;
            3'b110 : {out} = 1'b1;
            3'b111 : {out} = 1'b1 ;    
      endcase
end
endmodule