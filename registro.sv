
module registro #(parameter n=4)(
											input logic [n-1:0]R_in,
											input logic R_enable,
											output tri [n-1:0]R_out );
											
logic [n-1:0] temp;
assign temp = (R_enable) ? R_in : R_out;
assign R_out = temp;

endmodule



