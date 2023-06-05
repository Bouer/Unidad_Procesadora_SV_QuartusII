`timescale 1ns/1ps

module CPU_test ();

	parameter m = 4;
	logic clk;
	logic [1:0]   Select_A, Select_B, Select_H,Select_D;
	logic [m-1:0] Constant_in;
	logic [3:0]   Select_G;
	logic         Select_MB,Select_MD,Select_MF;
	logic [3:0]  Enable_load;
	logic [m-1:0] data_in; 
   logic [3:0] Banderas;
	logic [m-1:0] Out_address, Out_Data;
	
	/*Procesador CPU (Select_A, Select_B,  Select_H, Select_D, 
					    Constant_in, Select_G,
					    Select_MB,Select_MD,Select_MF,
					    Enable_load,data_in,Banderas, Out_address, Out_data);                    
						 */
	
	Procesador CPU_1 ( Select_A, Select_B,  Select_H, Select_D, 
					    Constant_in, Select_G,
					    Select_MB, Select_MD, Select_MF,
					    Enable_load, data_in, Banderas, Out_address, Out_data);                    
	
	
	initial begin
	clk =0;
	Select_A = 0; Select_B = 0;  Select_H = 0; Select_D = 0; 
	Constant_in = 0; Select_G = 0;
	Select_MB= 0; Select_MD= 0; Select_MF = 0;
	Enable_load = 0; data_in = 0; Banderas = 0; 
	Out_address = 0; Out_data = 0;
	#100;
	clk =1;
	#100;
	clk =0;
	#100;
	clk =1;
	
	end
		

		endmodule
