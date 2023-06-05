
module decoder(
					input  logic enable_deco,
					input  logic [1:0] Dec_in, 
					output logic [1:0] Dec_out  
					
);



assign Dec_out = enable_deco ? Dec_in : 2'b00 ;


endmodule

