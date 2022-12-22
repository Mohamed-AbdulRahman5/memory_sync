


// Engineer: 
// 
// Create Date: 22/12/2022 
// Design Name: 


module memory #(parameter Addr_width =4 , data_width=8) (
input clk ,//synchronus memory
input we,//wirte and read enable
input [Addr_width - 1: 0]addr,// data adress
input [data_width-1:0] data_w,//dara wirte
output reg [data_width-1:0] data_r//data read

);

/// describing a memory 2^addr width * data width(byte)
 reg [data_width-1:0] mem [0: 2**Addr_width -1 ] ;
 
//opreation on memory

always@(posedge clk)
begin 
 //write priority 
 // write on we 1
 if(we) 
  
  mem[addr] <= data_w ;//writing into memory
  
else 
  
 data_r <=mem[addr];

  
end
endmodule








