
module Procesador #(parameter m=8)
						 (
						 input logic [1:0]   A_sel, B_sel, 
						 input logic [1:0]   Dest_sel,     //Entradas de seleccion
						 input logic [1:0]   H_sel,						 
						 input logic [m-1:0] Cons_IN, //Entrada Constant IN de MUX H
						 input logic [3:0]   G_sel,
						 input logic         MB_sel,MD_sel, MF_sel,
				       input logic       Load_en, // Entrada Load enable de registros (pasa por AND)
						 input logic [m-1:0] Data_IN, // Entrada de datos al MUX D
						 output logic [3:0]  Tags,
                   output logic [m-1:0] Address_out, Data_out,                    
						 output logic [m-1:0] Reg_in  // Salida de MUX D va a los registros
						 );
						 
logic enable_deco = 1; //Enable de decodificador
logic [m-1:0] BUS_FD; // Salida del  MUX F al MUX D	
logic [m-1:0] BUS_AF; // Salida de la ALU al MUX F					 
logic [m-1:0] BUS_shift; // Salida del shift al MUX F
logic [1:0]   Sal_deco;  // BUS de salida del deco va a las AND
logic	        Load_0, Load_1, Load_2, Load_3 ;      // Salida de compuerta AND va a registros
logic [m-1:0] B_dataBH; // Salida de MUX B va al MUX H
logic [m-1:0] Sal_R0, Sal_R1, Sal_R2, Sal_R3; // Salida de registros, van a MUX A y MUX B



						
						 

//DECODIFICADOR
decoder Deco (enable_deco ,Dest_sel,Sal_deco);

//AND
and_R And0 (~Sal_deco[1] & ~Sal_deco[0],Load_en, Load_0);
and_R And1 (~Sal_deco[1] & Sal_deco[0],Load_en, Load_1);
and_R And2 (Sal_deco[1] & ~Sal_deco[0],Load_en, Load_2);
and_R And3 (Sal_deco[1] & Sal_deco[0],Load_en, Load_3);

// REGISTROS
registro #(m) R0 (Reg_in, Load_0, Sal_R0);
registro #(m) R1 (Reg_in, Load_1, Sal_R1);
registro #(m) R2 (Reg_in, Load_2, Sal_R2);
registro #(m) R3 (Reg_in, Load_3, Sal_R3);


//MULTIPLEXORES A y B
mux_4x1 #(m) mux_A (A_sel, Sal_R0, Sal_R1, Sal_R2, Sal_R3, Address_out);
mux_4x1 #(m) mux_B (B_sel, Sal_R0, Sal_R1, Sal_R2, Sal_R3, B_dataBH);

// Multiplexores 2x1
mux_2x1 #(m) mux_H (B_dataBH, Cons_IN, MB_sel, Data_out); // Mux B en TP
mux_2x1 #(m) mux_F (BUS_shift, BUS_AF, MF_sel, BUS_FD);
mux_2x1 #(m) mux_D (Data_IN, BUS_FD, MD_sel, Reg_in);


//Shifter
Shifter #(m) shif_H (Data_out,H_sel,BUS_shift);
	
//ALU	
ALU_G #(m) ALU_G_1 (Address_out,Data_out,G_sel,BUS_AF, Tags);

endmodule
//--------------------------------
