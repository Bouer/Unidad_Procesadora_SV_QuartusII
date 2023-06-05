module  mux_B #(parameter n=4)
					(
					input  logic [n-1:0]R0,R1,R2,R3,
					input  logic [1:0]Bsel,
					output logic [n-1:0]Bdata);
					
always_comb 
	case (Bsel) 
		2'b00 : Bdata = R0;
		2'b01 : Bdata = R1;
		2'b10 : Bdata = R2;
		2'b11 : Bdata = R3;
	endcase 

endmodule 