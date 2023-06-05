
module mux_2x1 #(parameter n=4)(
					input logic [n-1:0] En_0,En_1,
					input logic Mx_sel,
					output logic [n-1:0]BUS_x );

assign BUS_x = (Mx_sel) ? En_0 : En_1 ;

endmodule

