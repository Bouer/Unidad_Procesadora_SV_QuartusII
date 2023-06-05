`timescale 1ns/1ps

module Procesador_simulation;
  // Parámetros
  parameter m = 8;

  // Entradas y salidas
  logic [1:0]   A_sel, B_sel, Dest_sel, H_sel;
  logic [m-1:0] Cons_IN, Data_IN;
  logic [3:0]   G_sel;
  logic         MB_sel, MD_sel, MF_sel;
  logic         Load_en;
  logic [m-1:0] Address_out, Data_out;
  logic [3:0]   Tags;
  logic [m-1:0] Reg_in; 

  
  
  
  // Clock
  bit clk;

  // Instanciar el módulo Procesador
  Procesador #(m) procesador (
    .A_sel(A_sel),
    .B_sel(B_sel),
    .Dest_sel(Dest_sel),
    .H_sel(H_sel),
    .Cons_IN(Cons_IN),
    .G_sel(G_sel),
    .MB_sel(MB_sel),
    .MD_sel(MD_sel),
    .MF_sel(MF_sel),
    .Load_en(Load_en),
    .Data_IN(Data_IN),
    .Address_out(Address_out),
    .Data_out(Data_out),
    .Tags(Tags),
	 .Reg_in(Reg_in)
  );

  // Generador de clock
  always #5 clk = ~clk;

  // Inicialización
  initial begin
    A_sel = 2'b00;
    B_sel = 2'b00;
    Dest_sel = 2'b00;
    H_sel = 2'b00;
    Cons_IN = 0;
    Data_IN = 0;
    G_sel = 4'b0000;
    MB_sel = 1'b0;
    MD_sel = 1'b0;
    MF_sel = 1'b0;
    Load_en = 1'b0;
    #25;

	 
    /* ---CARGAMOS VALORES A REGISTROS--- */
	 
	 MB_sel = 1'b1;
    Dest_sel = 2'b01;     // Registro destion R1
    Data_IN = 8'b00000100;//(4)
    MD_sel = 1'b1;        // Elegimos cargar datos por Data IN 
	 Load_en = 1'b1;       // Habilitamos el guardado
	 #25;	
	 //Desabilitamos el grabado de registros
	 Load_en = 1'b0;       // Habilitamos el guardad
	 #25;	
	
/*-----------------------------------------------------------------*/
   
	 Dest_sel = 2'b10;     // Registro destion R2
    Data_IN = 8'b00001000;//(8)
    Load_en = 1'b1;       // Habilitamos el guardado
	 #25;	
	 
	 //Desabilitamos el grabado de registros
	 Load_en = 1'b0;       // Habilitamos el guardad
	 #25;	
	 
/*-----------------------------------------------------------------*/	

	 Dest_sel = 2'b11;     // Registro destion R3
    Data_IN = 8'b001100;//(12)
    MD_sel = 1'b1;        // Elegimos cargar datos por Data IN 
	 Load_en = 1'b1;       // Habilitamos el guardado
	 #25;	
	 
	 //Desabilitamos el grabado de registros
	 Load_en = 1'b0;        // Elegimos cargar datos por Data IN 
	 #5;
	 MD_sel = 1'b0;         // Elegimos entrada unidad MUX F
	 #25;	
	
/*-----------------------------------------------------------------*/	

    /* ---OPERACIONES CON ALU Y SHIFTER--- */
	 
    A_sel = 2'b01;         // Elegimos R1
    B_sel = 2'b10;         // Elegimos R2
    H_sel = 2'b01;         // Shifter -> LHL
    Cons_IN = 8'b00110010; // #50
	 Data_IN = 8'b00100000; // #0
    G_sel = 4'b0010;       // ALU -> F=A+B
    MF_sel = 1'b1;         // Elegimos entrada de shifter
	 
    
	 #25;
	 
	 MF_sel = 1'b0;         // Elegimos entrada de ALU
	 
	 #25;
	 
/*-----------------------------------------------------------------*/	
	 
	 
    A_sel = 2'b10;         // Elegimos R1
    B_sel = 2'b01;         // Elegimos R2
    H_sel = 2'b11;         // Shifter -> 0
    Cons_IN = 8'b0001000; // #16
    G_sel = 4'b0100;       // ALU -> F=A+/B
    MB_sel = 1'b1;         // Elegimos entrada de MUX B
    MF_sel = 1'b1;         // Elegimos entrada de shifter
	 
    
	 #25;
	 
	 MF_sel = 1'b0;         // Elegimos entrada de ALU
	 
	 #25;
	 
	 
	  // Mostrar los valores de las variables en un display
	$display("Valores de las variables:");
	$display("A_sel = %0d, B_sel = %0d, Dest_sel = %0d, H_sel = %0d", A_sel, B_sel, Dest_sel, H_sel);
	$display("Cons_IN = %0d, G_sel = %0d, MB_sel = %0d, MD_sel = %0d, MF_sel = %0d",
				Cons_IN, G_sel, MB_sel, MD_sel, MF_sel);
	$display("Load_en = %0d, Data_IN = %0d, Address_out = %0d, Data_out = %0d, Tags = %0d",
				Load_en, Data_IN, Address_out, Data_out, Tags);
	$display("Reg_in = %0d", Reg_in);

   $finish; // Finalizar la simulación
	
  end

endmodule

