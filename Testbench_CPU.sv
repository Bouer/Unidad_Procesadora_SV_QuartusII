module Testbench_CPU;

  // Parámetro
  parameter m = 8;
  
  // Señales del testbench
  reg [1:0] A_sel, B_sel, H_sel, D_sel;
  reg [m-1:0] Cons_IN, Data_IN;
  reg [3:0] G_sel;
  reg MB_sel, MD_sel, MF_sel;
  reg [3:0] Load_en;
  reg clock;
  
  // Señales de salida del testbench
  wire [3:0] Tags;
  wire [m-1:0] Address_out, Data_out;
  
  // Instancia del módulo Procesador
  Procesador #(m) dut (
    .A_sel(A_sel),
    .B_sel(B_sel),
    .H_sel(H_sel),
    .D_sel(D_sel),
    .Cons_IN(Cons_IN),
    .G_sel(G_sel),
    .MB_sel(MB_sel),
    .MD_sel(MD_sel),
    .MF_sel(MF_sel),
    .Load_en(Load_en),
    .Data_IN(Data_IN),
    .Tags(Tags),
    .Address_out(Address_out),
    .Data_out(Data_out)
  );
  
  // Generación de clock
  always begin
    #5 clock = 0;
    #5 clock = 1;
  end
  
  // Estímulo
  initial begin
    // Inicialización de las entradas
    A_sel = 0;
    B_sel = 0;
    H_sel = 0;
    D_sel = 0;
    Cons_IN = 0;
    G_sel = 0;
    MB_sel = 0;
    MD_sel = 0;
    MF_sel = 0;
    Load_en = 0;
    Data_IN = 0;
    
    // Esperar un ciclo de clock antes de iniciar el estímulo
    #10;
    
    // Estímulo de ejemplo
    #10 A_sel = 1;
    #10 B_sel = 2;
    #10 H_sel = 1;
    // Continuar con más estímulos...
    
    // Esperar un ciclo de clock antes de finalizar la simulación
    #10;
    
    // Finalizar la simulación
    $finish;
  end
  
endmodule
