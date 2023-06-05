
module  mux_4x1 #(parameter n=4)
					(
					input  logic [1:0]sel,
					input  logic [n-1:0]R0,R1,R2,R3,
					output logic [n-1:0]data);
					
always_comb 
	case (sel) 
		2'b00 : data = R0;
		2'b01 : data = R1;
		2'b10 : data = R2;
		2'b11 : data = R3;
	endcase 

endmodule 

