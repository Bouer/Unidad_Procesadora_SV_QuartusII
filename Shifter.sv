
module Shifter #(parameter n = 4) 
              (input logic [n-1:0] Bus_B, 
               input logic [1:0] H_sel,
               output logic [n-1:0] Shif_out);

  always_comb
  
  case (H_sel)
      2'b00: Shif_out = Bus_B;                         // No hay corrimiento
      2'b01: Shif_out = { Bus_B[n-2:0], 1'b0 }; 		 // SHL
      2'b10: Shif_out = { Bus_B[n-1], Bus_B[n-1:1] };  // SHR
		2'b11: Shif_out = 4'b0 ;                         // Bus=0
	
    endcase

endmodule

