module MemoriaROM(input [7:0] idata,
				input [2:0] addr,
				input rom_iclk,
				output [7:0] odata);
				
	reg [7:0] rom [4:0];
	reg [7:0] reg_Qodata;
	reg [7:0] reg_Dodata;
	
	assign odata = reg_Dodata;
	 
  always @(posedge rom_iclk) 
     
	  begin	 
     rom[addr] <= idata;
	  
	  reg_Dodata <= rom[addr];
	  
	  reg_Qodata <= reg_Dodata;
	  end


  initial begin
    rom[0] = 8'b00000000; 
    rom[1] = 8'b00000001;
    rom[2] = 8'b00000010;
    rom[3] = 8'b00000011;
    rom[4] = 8'b00000100; 
   end
endmodule 