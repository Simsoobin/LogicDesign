
# Lab 09
## 실습 내용
 ### 리모컨 동작 원리 작성  
>verilog code
```wire		ir_rx;
assigns 		ir_rx = ~i_ir_rxb;
reg 		[1:0] 	seq_rx ; 
always @(posedge clk_1M or negedge rst_n) begin 
	if(rst_n == 1'b0) begin 
		seq_rx <= 2'b00; 
	end else begin 
			seq_rx <= {seq_rx[0], ir_rx}; 
	end 
end`
`[31:0]의 data 를 출력한다. 
반전신호를 받고, 현재신호를 오른편에 두고 이전신호를 왼편에 표기한 한다.
	 1, 0이 한 term으로 바라보며, Custom code(16bits),  Data code(8 bits), Data code(8 bits) 총 32bits 를 구성한다.`
[](https://github.com/Simsoobin/LogicDesign/blob/master/practice09/11.26.PNG)

<!--stackedit_data:
eyJoaXN0b3J5IjpbOTg4MTgxMjhdfQ==
-->